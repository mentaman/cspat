value(Node, Slot, Value):- edge(Node, Slot, Value).
value(Node, Slot, Value):-
    edge(Node, isa, Node1),
    value(Node1, Slot, Value).
value(Node, Slot, Value):-
    edge(Node, ako, Node1),
    value(Node1, Slot, Value).

value(Node, isa, Node2):-
    edge(Node1, isa, Node),
    edge(Node, ako, Node2).