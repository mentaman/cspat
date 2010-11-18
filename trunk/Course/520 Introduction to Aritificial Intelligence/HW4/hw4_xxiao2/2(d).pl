value(Node, Slot, Value):- edge(Node, Slot, Value).
value(Node, Slot, Value):-
    edge(Node, isa, Node1),
    value(Node1, Slot, Value).
value(Node, Slot, Value):-
    edge(Node, ako, Node1),
    value(Node1, Slot, Value).
