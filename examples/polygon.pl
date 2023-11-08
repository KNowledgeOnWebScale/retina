% Calculating the area of a polygon

'https://knowledgeonwebscale.github.io/ns#area'([_],0).
'https://knowledgeonwebscale.github.io/ns#area'([[A,B],[C,D]|E],F) <=
    'https://knowledgeonwebscale.github.io/ns#area'([[C,D]|E],G),
    'https://knowledgeonwebscale.github.io/ns#builtin'(F is (A*D-B*C)/2+G,[]).

% query
'https://knowledgeonwebscale.github.io/ns#area'([[3,2],[6,2],[7,6],[4,6],[5,5],[5,3],[3,2]],_ANSWER) => true.
