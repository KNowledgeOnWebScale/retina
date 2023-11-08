% See https://en.wikipedia.org/wiki/Padovan_sequence

'https://knowledgeonwebscale.github.io/ns#padovan'(A,B) <=
    'https://knowledgeonwebscale.github.io/ns#pad'([A,0,1,1],B).

'https://knowledgeonwebscale.github.io/ns#pad'([0,A,_,_],A).
'https://knowledgeonwebscale.github.io/ns#pad'([1,_,A,_],A).
'https://knowledgeonwebscale.github.io/ns#pad'([2,_,_,A],A).
'https://knowledgeonwebscale.github.io/ns#pad'([A,B,C,D],E) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(A > 2,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(F is A-1,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(G is B+C,[]),
    'https://knowledgeonwebscale.github.io/ns#pad'([F,C,D,G],E).

% query 
'https://knowledgeonwebscale.github.io/ns#padovan'(1,_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#padovan'(10,_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#padovan'(100,_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#padovan'(1000,_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#padovan'(10000,_ANSWER) => true.
