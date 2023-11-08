% Meta-interpretation
% Original code from https://www.youtube.com/watch?v=nmBkU-l1zyc&t=1870s

'https://knowledgeonwebscale.github.io/ns#mi'([],[]).
'https://knowledgeonwebscale.github.io/ns#mi'([G|Gs],[]) <=
    'https://knowledgeonwebscale.github.io/ns#head_body_'([G,Goals],Gs),
    'https://knowledgeonwebscale.github.io/ns#mi'(Goals,[]).

'https://knowledgeonwebscale.github.io/ns#head_body_'(['https://knowledgeonwebscale.github.io/ns#mi'([],[]),Rs],Rs).
'https://knowledgeonwebscale.github.io/ns#head_body_'(['https://knowledgeonwebscale.github.io/ns#mi'([G|Gs],[]),['https://knowledgeonwebscale.github.io/ns#head_body_'([G,Goals],Gs),'https://knowledgeonwebscale.github.io/ns#mi'(Goals,[])|Rs]],Rs).

'https://knowledgeonwebscale.github.io/ns#head_body_'(['https://knowledgeonwebscale.github.io/ns#head_body_'([Head,Goals0],Goals),Rs],Rs) <=
    'https://knowledgeonwebscale.github.io/ns#head_body_'([Head,Goals0],Goals).

'https://knowledgeonwebscale.github.io/ns#head_body_'(['https://knowledgeonwebscale.github.io/ns#factorial'(0,'https://knowledgeonwebscale.github.io/ns#s'(0,[])),Rs],Rs).
'https://knowledgeonwebscale.github.io/ns#head_body_'(['https://knowledgeonwebscale.github.io/ns#factorial'('https://knowledgeonwebscale.github.io/ns#s'(N,[]),F),['https://knowledgeonwebscale.github.io/ns#factorial'(N,F1),'https://knowledgeonwebscale.github.io/ns#prod'(['https://knowledgeonwebscale.github.io/ns#s'(N,[]),F1],F)|Rs]],Rs).

'https://knowledgeonwebscale.github.io/ns#head_body_'(['https://knowledgeonwebscale.github.io/ns#prod'([0,_],0),Rs],Rs).
'https://knowledgeonwebscale.github.io/ns#head_body_'(['https://knowledgeonwebscale.github.io/ns#prod'(['https://knowledgeonwebscale.github.io/ns#s'(N,[]),M],P),['https://knowledgeonwebscale.github.io/ns#prod'([N,M],K),'https://knowledgeonwebscale.github.io/ns#sum'([K,M],P)|Rs]],Rs).

'https://knowledgeonwebscale.github.io/ns#head_body_'(['https://knowledgeonwebscale.github.io/ns#sum'([0,M],M),Rs],Rs).
'https://knowledgeonwebscale.github.io/ns#head_body_'(['https://knowledgeonwebscale.github.io/ns#sum'(['https://knowledgeonwebscale.github.io/ns#s'(N,[]),M],'https://knowledgeonwebscale.github.io/ns#s'(K,[])),['https://knowledgeonwebscale.github.io/ns#sum'([N,M],K)|Rs]],Rs).

% query
'https://knowledgeonwebscale.github.io/ns#mi'(['https://knowledgeonwebscale.github.io/ns#mi'(['https://knowledgeonwebscale.github.io/ns#factorial'('https://knowledgeonwebscale.github.io/ns#s'('https://knowledgeonwebscale.github.io/ns#s'('https://knowledgeonwebscale.github.io/ns#s'('https://knowledgeonwebscale.github.io/ns#s'('https://knowledgeonwebscale.github.io/ns#s'(0,[]),[]),[]),[]),[]),_X)],[])],[]) => true.
