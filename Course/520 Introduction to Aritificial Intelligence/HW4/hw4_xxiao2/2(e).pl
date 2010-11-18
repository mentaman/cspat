value(Node, Slot, Value):- edge(Node, Slot, Value).
value(Node, Slot, Value):-
    edge(Node, isa, Node1),
    value(Node1, Slot, Value).
    
value(Node, Slot, Value):-
    Node == whale,
    edge(Node, ako, Node1),
    value(Node1, Slot, Value),
    Slot == can,
    Value \== run.

value(Node, Slot, Value):-
    Node == whale,
    edge(Node, ako, Node1),
    value(Node1, Slot, Value),
    Slot \== can.

value(Node, Slot, Value):-
    Node == roadrunner,
    edge(Node, ako, Node1),
    value(Node1, Slot, Value),
    Slot == can,
    Value \== fly.

value(Node, Slot, Value):-
    Node == roadrunner,
    edge(Node, ako, Node1),
    value(Node1, Slot, Value),
    Slot \== can.
     
value(Node, Slot, Value):-
    Node \== whale, 
    Node \== roadrunner,
    edge(Node, ako, Node1),
    value(Node1, Slot, Value).

