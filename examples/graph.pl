% Traversing graph paths

'https://knowledgeonwebscale.github.io/ns#builtin'(dynamic('https://knowledgeonwebscale.github.io/ns#path'/2),[]).

'https://knowledgeonwebscale.github.io/ns#oneway'('http://example.org/ns#paris','http://example.org/ns#orleans').
'https://knowledgeonwebscale.github.io/ns#oneway'('http://example.org/ns#paris','http://example.org/ns#chartres').
'https://knowledgeonwebscale.github.io/ns#oneway'('http://example.org/ns#paris','http://example.org/ns#amiens').
'https://knowledgeonwebscale.github.io/ns#oneway'('http://example.org/ns#orleans','http://example.org/ns#blois').
'https://knowledgeonwebscale.github.io/ns#oneway'('http://example.org/ns#orleans','http://example.org/ns#bourges').
'https://knowledgeonwebscale.github.io/ns#oneway'('http://example.org/ns#blois','http://example.org/ns#tours').
'https://knowledgeonwebscale.github.io/ns#oneway'('http://example.org/ns#chartres','http://example.org/ns#lemans').
'https://knowledgeonwebscale.github.io/ns#oneway'('http://example.org/ns#lemans','http://example.org/ns#angers').
'https://knowledgeonwebscale.github.io/ns#oneway'('http://example.org/ns#lemans','http://example.org/ns#tours').
'https://knowledgeonwebscale.github.io/ns#oneway'('http://example.org/ns#angers','http://example.org/ns#nantes').

'https://knowledgeonwebscale.github.io/ns#oneway'(A,B) => 'https://knowledgeonwebscale.github.io/ns#path'(A,B).
'https://knowledgeonwebscale.github.io/ns#path'(A,B),'https://knowledgeonwebscale.github.io/ns#path'(B,C) => 'https://knowledgeonwebscale.github.io/ns#path'(A,C).

% query
'https://knowledgeonwebscale.github.io/ns#path'(_CITY,'http://example.org/ns#nantes') => true.
