% See https://en.wikipedia.org/wiki/Fibonacci_number

'<https://josd.github.io/imagining#fibonacci>'(A,B) :-
    fibonacci(A,0,1,B).

fibonacci(0,A,_,A).
fibonacci(1,_,A,A).
fibonacci(A,B,C,D) :-
    A > 1,
    E is A-1,
    F is B+C,
    fibonacci(E,C,F,D).

'<https://josd.github.io/imagining#golden_ratio>'(A,B) :-
    '<https://josd.github.io/imagining#fibonacci>'(A,C),
    D is A+1,
    '<https://josd.github.io/imagining#fibonacci>'(D,E),
    B is E/C.

% query
query('<https://josd.github.io/imagining#fibonacci>'(1,_ANSWER)).
query('<https://josd.github.io/imagining#fibonacci>'(2,_ANSWER)).
query('<https://josd.github.io/imagining#fibonacci>'(3,_ANSWER)).
query('<https://josd.github.io/imagining#fibonacci>'(4,_ANSWER)).
query('<https://josd.github.io/imagining#fibonacci>'(5,_ANSWER)).
query('<https://josd.github.io/imagining#fibonacci>'(91,_ANSWER)).
query('<https://josd.github.io/imagining#fibonacci>'(283,_ANSWER)).
query('<https://josd.github.io/imagining#fibonacci>'(3674,_ANSWER)).
query('<https://josd.github.io/imagining#golden_ratio>'(1,_ANSWER)).
query('<https://josd.github.io/imagining#golden_ratio>'(10,_ANSWER)).
query('<https://josd.github.io/imagining#golden_ratio>'(100,_ANSWER)).
query('<https://josd.github.io/imagining#golden_ratio>'(1000,_ANSWER)).

run :-
    query(Q),
    Q,
    writeq(Q),
    write('.\n'),
    fail;
    true.
