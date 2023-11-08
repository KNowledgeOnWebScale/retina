% Traversing graph paths

'http://josd.github.io/ns#builtin'(dynamic('http://josd.github.io/ns#path'/2),[]).

'http://josd.github.io/ns#oneway'('http://example.org/ns#paris','http://example.org/ns#orleans').
'http://josd.github.io/ns#oneway'('http://example.org/ns#paris','http://example.org/ns#chartres').
'http://josd.github.io/ns#oneway'('http://example.org/ns#paris','http://example.org/ns#amiens').
'http://josd.github.io/ns#oneway'('http://example.org/ns#orleans','http://example.org/ns#blois').
'http://josd.github.io/ns#oneway'('http://example.org/ns#orleans','http://example.org/ns#bourges').
'http://josd.github.io/ns#oneway'('http://example.org/ns#blois','http://example.org/ns#tours').
'http://josd.github.io/ns#oneway'('http://example.org/ns#chartres','http://example.org/ns#lemans').
'http://josd.github.io/ns#oneway'('http://example.org/ns#lemans','http://example.org/ns#angers').
'http://josd.github.io/ns#oneway'('http://example.org/ns#lemans','http://example.org/ns#tours').
'http://josd.github.io/ns#oneway'('http://example.org/ns#angers','http://example.org/ns#nantes').

'http://josd.github.io/ns#oneway'(A,B) => 'http://josd.github.io/ns#path'(A,B).
'http://josd.github.io/ns#path'(A,B),'http://josd.github.io/ns#path'(B,C) => 'http://josd.github.io/ns#path'(A,C).

% query
'http://josd.github.io/ns#path'(_CITY,'http://example.org/ns#nantes') => true.
