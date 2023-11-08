% See https://en.wikipedia.org/wiki/'https://knowledgeonwebscale.github.io/ns#fibonacci'_number

'https://knowledgeonwebscale.github.io/ns#fibonacci'(A,B) <=
    'https://knowledgeonwebscale.github.io/ns#fib'([A,0,1],B).

'https://knowledgeonwebscale.github.io/ns#fib'([0,A,_],A).
'https://knowledgeonwebscale.github.io/ns#fib'([1,_,A],A).
'https://knowledgeonwebscale.github.io/ns#fib'([A,B,C],D) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(A > 1,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(E is A-1,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(F is B+C,[]),
    'https://knowledgeonwebscale.github.io/ns#fib'([E,C,F],D).

% query
'https://knowledgeonwebscale.github.io/ns#fibonacci'(1,_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#fibonacci'(10,_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#fibonacci'(100,_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#fibonacci'(1000,_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#fibonacci'(10000,_ANSWER) => true.
