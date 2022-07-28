% Towers of Hanoi

'<https://josd.github.io/eyeglass#move>'(0,[_,_,_]) :-
    !.
'<https://josd.github.io/eyeglass#move>'(N,[A,B,C]) :-
    M is N-1,
    '<https://josd.github.io/eyeglass#move>'(M,[A,C,B]),
    '<https://josd.github.io/eyeglass#move>'(M,[C,B,A]).

% query
query('<https://josd.github.io/eyeglass#move>'(14,[left,centre,right])).

run :-
    query(Q),
    Q,
    writeq(Q),
    write('.\n'),
    fail;
    true.
