% Calculating the area of a polygon

'http://josd.github.io/ns#area'([_],0).
'http://josd.github.io/ns#area'([[A,B],[C,D]|E],F) <=
    'http://josd.github.io/ns#area'([[C,D]|E],G),
    'http://josd.github.io/ns#builtin'(F is (A*D-B*C)/2+G,[]).

% query
'http://josd.github.io/ns#area'([[3,2],[6,2],[7,6],[4,6],[5,5],[5,3],[3,2]],_ANSWER) => true.
