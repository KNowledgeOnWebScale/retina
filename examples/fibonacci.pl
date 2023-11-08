% See https://en.wikipedia.org/wiki/'http://josd.github.io/ns#fibonacci'_number

'http://josd.github.io/ns#fibonacci'(A,B) <=
    'http://josd.github.io/ns#fib'([A,0,1],B).

'http://josd.github.io/ns#fib'([0,A,_],A).
'http://josd.github.io/ns#fib'([1,_,A],A).
'http://josd.github.io/ns#fib'([A,B,C],D) <=
    'http://josd.github.io/ns#builtin'(A > 1,[]),
    'http://josd.github.io/ns#builtin'(E is A-1,[]),
    'http://josd.github.io/ns#builtin'(F is B+C,[]),
    'http://josd.github.io/ns#fib'([E,C,F],D).

% query
'http://josd.github.io/ns#fibonacci'(1,_ANSWER) => true.
'http://josd.github.io/ns#fibonacci'(10,_ANSWER) => true.
'http://josd.github.io/ns#fibonacci'(100,_ANSWER) => true.
'http://josd.github.io/ns#fibonacci'(1000,_ANSWER) => true.
'http://josd.github.io/ns#fibonacci'(10000,_ANSWER) => true.
