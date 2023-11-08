% See https://en.wikipedia.org/wiki/Padovan_sequence

'http://josd.github.io/ns#padovan'(A,B) <=
    'http://josd.github.io/ns#pad'([A,0,1,1],B).

'http://josd.github.io/ns#pad'([0,A,_,_],A).
'http://josd.github.io/ns#pad'([1,_,A,_],A).
'http://josd.github.io/ns#pad'([2,_,_,A],A).
'http://josd.github.io/ns#pad'([A,B,C,D],E) <=
    'http://josd.github.io/ns#builtin'(A > 2,[]),
    'http://josd.github.io/ns#builtin'(F is A-1,[]),
    'http://josd.github.io/ns#builtin'(G is B+C,[]),
    'http://josd.github.io/ns#pad'([F,C,D,G],E).

% query 
'http://josd.github.io/ns#padovan'(1,_ANSWER) => true.
'http://josd.github.io/ns#padovan'(10,_ANSWER) => true.
'http://josd.github.io/ns#padovan'(100,_ANSWER) => true.
'http://josd.github.io/ns#padovan'(1000,_ANSWER) => true.
'http://josd.github.io/ns#padovan'(10000,_ANSWER) => true.
