% Socrates is a mortal

'http://example.org/ns#Man'('http://example.org/ns#Socrates').

'http://example.org/ns#Mortal'(X) :-
    'http://example.org/ns#Man'(X).

% query
query('http://example.org/ns#Mortal'(_IND)).

run :-
    query(Q),
    Q,
    writeq(Q),
    write('.\n'),
    fail;
    true.
