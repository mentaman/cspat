value(Node, Slot, Value):- edge(Node, Slot, Value).
value(Node, Slot, Value):-
    edge(Node, isa, Node1),
    value(Node1, Slot, Value).
value(Node, Slot, Value):-
    Node == whale,
    Slot \== can,
    Value == run,
    edge(Node, ako, Node1),
    value(Node1, Slot, Value).
     
value(Node, Slot, Value):-
    Node == roadrunner,
    Slot \== can,
    Value == fly,
    edge(Node, ako, Node1),
    value(Node1, Slot, Value). 
     
value(Node, Slot, Value):-
    Node \== whale, 
    Node \== roadrunner,
    edge(Node, ako, Node1),
    value(Node1, Slot, Value).

