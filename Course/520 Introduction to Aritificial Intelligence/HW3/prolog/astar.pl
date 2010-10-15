%==============================================================================
%
%   A* SEARCH, Version 5
%   Dennis Bahler, CSC 520, Fall 2010
%  
%   Requires move/3 to implement a state space graph.
%   Requires heuristic/3 to implement heuristic.
%  
%   Modifications:
%   Version 5: Outputs the solution path in correct order.
%   Version 4: Maintains a queue of paths, the head of which on termination is the solution.
%              Lacks solution path output.
%              Lacks correct parameters on the recursive call of path/3.
%   Version 3: Both mySort/2 and myMerge/3 modified to sort/merge by nondecreasing f values.
%   Version 3: State representation no longer a list, but a structured term with functor state/4,
%              so list nesting doesn't get out of hand:
%              state(city_name, distance_from_start, heuristic_estimate_to_goal, sum_of_these_two)
%   Version 2: moves/5 uses move/3; assumes depth increases by Distance each move
%   Version 1: moves/5 uses move/2; assumes depth increases by one each move
%  
%==============================================================================
path(Start, Goal):- heuristic(Start, Goal, Val), path([[state(Start,0,Val,Val)]], [], Goal).

path([], _, _):-
  write('Search over, no (more) solutions found.'), nl,
  write('======================'), nl, nl.
path([[state(Goal,Dist,H,F) | RestofPath] | _], _, Goal):-
  nl, write('======================'), nl,
  write('Solution found.'), nl,
  write('    Destination: '), write(Goal), nl,
  write('    Total distance: '), write(Dist), nl,
  write('    Path: '), writepath([state(Goal,Dist,H,F) | RestofPath]).
path([[state(Name,Depth,H,F) | RestofPath] | RestofOpenList],
     ClosedList,
     Goal):-
  nl, write('Present state: '), nl, write(state(Name,Depth,H,F)), nl,
  write('Rest of Open List: '), nl, printlist(RestofOpenList),
  write('Closed List: '), nl, printlist(ClosedList),
  findall([state(NewName,NewDist,NewH,NewF), state(Name,Depth,H,F) | RestofPath],
           moves(state(Name,Depth,H,F),
                 Goal,
                 RestofOpenList,
                 ClosedList,
                 state(NewName,NewDist,NewH,NewF)),
           SuccessorPathList),
  mySort(SuccessorPathList, SortedSuccessorPathList),
  myMerge(RestofOpenList, SortedSuccessorPathList, NewOpenList),
  !,
  path(NewOpenList,
       [state(Name,Depth,H,F) | ClosedList],
       Goal).

moves(state(Name,Depth,H,F),
      Goal,
      OpenList,
      ClosedList,
      state(NewName,NewDepth,NewH,NewF)):-
  move(Name, NewName, Distance),
  Name \== NewName,
  NewDepth is Depth + Distance,
  heuristic(NewName, Goal, NewH),
  NewF is NewDepth + NewH,
  \+member([state(NewName,NewDepth,NewH,NewF) | RestofPath], OpenList),
  \+member(state(NewName,_,_,_), ClosedList).

%==============================================================================
%  
%   A Prolog Quicksort, just for fun (and for A* above):
%   quicksort(List,SortedList)
%  
%   Challenge: Brush up on quicksort, then figure out how this works.
%  
%   The use of both mySort/2 and myMerge/3 has been modified to
%   sort/merge by NONDECREASING F VALUES.
%   Prolog's built-in sort/2 will not do this.
%   
%==============================================================================
mySort(Unsorted, Sorted):- quicksort(Unsorted, Sorted).

quicksort([],[]).
quicksort([X | Tail], Sorted):-
    split(X, Tail, Small, Big),
    quicksort(Small, SortedSmall),
    quicksort(Big, SortedBig),
    append(SortedSmall, [X | SortedBig], Sorted).

split(X, [], [], []).
split([state(N1,D1,H1,F1) | RestofPath1],
     [[state(N2,D2,H2,F2) | RestofPath2] | Tail],
     [[state(N2,D2,H2,F2) | RestofPath2] | Small],
     Big):-
    F1 > F2, !,
    split([state(N1,D1,H1,F1) | RestofPath1], Tail, Small, Big).
split([state(N1,D1,H1,F1) | RestofPath1],
     [[state(N2,D2,H2,F2) | RestofPath2] | Tail],
     Small,
     [[state(N2,D2,H2,F2) | RestofPath2] | Big]):-
    split([state(N1,D1,H1,F1) | RestofPath1], Tail, Small, Big).

%==============================================================================
%  
%   merge/3 is built-in to SWI-prolog.
%   Here, for the curious, is how it could be written.
%   
%   Type the query listing(merge). to see how merge/3 *is* written (more complex
%   syntax, same basic idea).
%  
%   The use of both mySort/2 and myMerge/3 has been modified to
%   sort/merge by NONDECREASING F VALUES.
%   Prolog's built-in merge/3 will not do this.
%   
%==============================================================================
myMerge([], List, List):- !.
myMerge(List, [], List):- !.
myMerge([[state(N1,D1,H1,F1) | RestofPath1] | T1],
        [[state(N2,D2,H2,F2) | RestofPath2] | T2],
        [[state(N1,D1,H1,F1) | RestofPath1] | T]):-
    F1 < F2, !,
    myMerge(T1, [[state(N2,D2,H2,F2) | RestofPath2] | T2], T).
myMerge([[state(N1,D1,H1,F1) | RestofPath1] | T1],
        [[state(N2,D2,H2,F2) | RestofPath2] | T2],
        [[state(N2,D2,H2,F2) | RestofPath2] | T]):-
    myMerge([[state(N1,D1,H1,F1) | RestofPath1] | T1], T2, T).

%==============================================================================
%  
%   printlist(L) writes the elements of L, comma-separated.
%   
%==============================================================================
printlist([ ]):- nl.
printlist([H]):-
    write(H),
    tab(1),
    printlist(T), !.
printlist([H | T]):-
    write(H),
    write(', '),
nl,
    %tab(1),
    printlist(T).

%==============================================================================
%  
%   writepath(L) writes the solution path L, name only.
%   Obviously similar to printlist/1, but outputs the list in reverse order.
%   
%==============================================================================
writepath([ ]):- nl.
writepath([state(Name, _, _, -)]):-
    write(Name), nl, !.
writepath([state(Name, _, _, _) | T]):-
    writepath(T),
    tab(1),
    write(Name).

