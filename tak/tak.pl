% Takeuchi function

'https://josd.github.io/plows#tak'([X,Y,Z],Z) :-
    X =< Y,
    !.
'https://josd.github.io/plows#tak'([X,Y,Z],A) :-
    X1 is X-1,
    'https://josd.github.io/plows#tak'([X1,Y,Z],A1),
    Y1 is Y-1,
    'https://josd.github.io/plows#tak'([Y1,Z,X],A2),
    Z1 is Z-1,
    'https://josd.github.io/plows#tak'([Z1,X,Y],A3),
    'https://josd.github.io/plows#tak'([A1,A2,A3],A).

% query
query('https://josd.github.io/plows#tak'([34,13,8],_ANSWER)).

run :-
    query(Q),
    Q,
    writeq(Q),
    write('.\n').
