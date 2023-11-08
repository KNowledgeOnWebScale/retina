% calculate easter date

'https://knowledgeonwebscale.github.io/ns#builtin'(use_module(library(between)),[]).

'https://knowledgeonwebscale.github.io/ns#easter'(Year,[Month,Day]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(A is Year rem 19,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(B is Year//100,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(C is Year rem 100,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D is (19*A+B-B//4-((B-(B+8)//25+1)//3)+15) rem 30,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(E is (32+2*(B rem 4)+2*(C//4)-D-(C rem 4)) rem 7,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(F is D+E-7*((A+11*D+22*E)//451)+114,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Month is F//31,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Day is F rem 31+1,[]).

% query
'https://knowledgeonwebscale.github.io/ns#easter'(Year,[_Month,_Day]) => true <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(between(2021,2050,Year),[]).
