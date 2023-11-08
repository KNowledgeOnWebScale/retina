% Meta-interpretation
% Original code from https://www.youtube.com/watch?v=nmBkU-l1zyc&t=1870s

'http://josd.github.io/ns#mi'([],[]).
'http://josd.github.io/ns#mi'([G|Gs],[]) <=
    'http://josd.github.io/ns#head_body_'([G,Goals],Gs),
    'http://josd.github.io/ns#mi'(Goals,[]).

'http://josd.github.io/ns#head_body_'(['http://josd.github.io/ns#mi'([],[]),Rs],Rs).
'http://josd.github.io/ns#head_body_'(['http://josd.github.io/ns#mi'([G|Gs],[]),['http://josd.github.io/ns#head_body_'([G,Goals],Gs),'http://josd.github.io/ns#mi'(Goals,[])|Rs]],Rs).

'http://josd.github.io/ns#head_body_'(['http://josd.github.io/ns#head_body_'([Head,Goals0],Goals),Rs],Rs) <=
    'http://josd.github.io/ns#head_body_'([Head,Goals0],Goals).

'http://josd.github.io/ns#head_body_'(['http://josd.github.io/ns#factorial'(0,'http://josd.github.io/ns#s'(0,[])),Rs],Rs).
'http://josd.github.io/ns#head_body_'(['http://josd.github.io/ns#factorial'('http://josd.github.io/ns#s'(N,[]),F),['http://josd.github.io/ns#factorial'(N,F1),'http://josd.github.io/ns#prod'(['http://josd.github.io/ns#s'(N,[]),F1],F)|Rs]],Rs).

'http://josd.github.io/ns#head_body_'(['http://josd.github.io/ns#prod'([0,_],0),Rs],Rs).
'http://josd.github.io/ns#head_body_'(['http://josd.github.io/ns#prod'(['http://josd.github.io/ns#s'(N,[]),M],P),['http://josd.github.io/ns#prod'([N,M],K),'http://josd.github.io/ns#sum'([K,M],P)|Rs]],Rs).

'http://josd.github.io/ns#head_body_'(['http://josd.github.io/ns#sum'([0,M],M),Rs],Rs).
'http://josd.github.io/ns#head_body_'(['http://josd.github.io/ns#sum'(['http://josd.github.io/ns#s'(N,[]),M],'http://josd.github.io/ns#s'(K,[])),['http://josd.github.io/ns#sum'([N,M],K)|Rs]],Rs).

% query
'http://josd.github.io/ns#mi'(['http://josd.github.io/ns#mi'(['http://josd.github.io/ns#factorial'('http://josd.github.io/ns#s'('http://josd.github.io/ns#s'('http://josd.github.io/ns#s'('http://josd.github.io/ns#s'('http://josd.github.io/ns#s'(0,[]),[]),[]),[]),[]),_X)],[])],[]) => true.
