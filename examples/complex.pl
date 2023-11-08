% See https://en.wikipedia.org/wiki/Complex_number

'https://knowledgeonwebscale.github.io/ns#exp'([[A,B],[C,D]],[E,F]) <=
    'https://knowledgeonwebscale.github.io/ns#polar'([A,B],[G,H]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(E is G^C*exp(-D*H)*cos(D*log(G)+C*H),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(F is G^C*exp(-D*H)*sin(D*log(G)+C*H),[]).

'https://knowledgeonwebscale.github.io/ns#log'([[A,B],[C,D]],[E,F]) <=
    'https://knowledgeonwebscale.github.io/ns#polar'([A,B],[G,H]),
    'https://knowledgeonwebscale.github.io/ns#polar'([C,D],[I,J]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(K is log(G),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(L is log(I),[]),
    'https://knowledgeonwebscale.github.io/ns#divide'([[L,J],[K,H]],[E,F]).

'https://knowledgeonwebscale.github.io/ns#sin'([A,B],[C,D]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(C is sin(A)*(exp(B)+exp(-B))/2,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D is cos(A)*(exp(B)-exp(-B))/2,[]).

'https://knowledgeonwebscale.github.io/ns#cos'([A,B],[C,D]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(C is cos(A)*(exp(B)+exp(-B))/2,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D is -sin(A)*(exp(B)-exp(-B))/2,[]).

'https://knowledgeonwebscale.github.io/ns#tan'(A,B) <=
    'https://knowledgeonwebscale.github.io/ns#sin'(A,C),
    'https://knowledgeonwebscale.github.io/ns#cos'(A,D),
    'https://knowledgeonwebscale.github.io/ns#divide'([C,D],B).

'https://knowledgeonwebscale.github.io/ns#asin'([A,B],[C,D]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(E is (sqrt((1+A)^2+B^2)-sqrt((1-A)^2+B^2))/2,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(F is (sqrt((1+A)^2+B^2)+sqrt((1-A)^2+B^2))/2,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(C is asin(E),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D is log(F+sqrt(F^2-1)),[]).

'https://knowledgeonwebscale.github.io/ns#acos'([A,B],[C,D]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(E is (sqrt((1+A)^2+B^2)-sqrt((1-A)^2+B^2))/2,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(F is (sqrt((1+A)^2+B^2)+sqrt((1-A)^2+B^2))/2,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(C is acos(E),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D is -log(F+sqrt(F^2-1)),[]).

'https://knowledgeonwebscale.github.io/ns#atan'(A,B) <=
    'https://knowledgeonwebscale.github.io/ns#subtract'([[0,1],A],C),
    'https://knowledgeonwebscale.github.io/ns#add'([[0,1],A],D),
    'https://knowledgeonwebscale.github.io/ns#divide'([C,D],E),
    'https://knowledgeonwebscale.github.io/ns#log'([[e,0],E],F),
    'https://knowledgeonwebscale.github.io/ns#divide'([F,[0,2]],B).

'https://knowledgeonwebscale.github.io/ns#polar'([A,B],[C,D]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(C is sqrt(A^2+B^2),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(E is acos(abs(A)/C),[]),
    'https://knowledgeonwebscale.github.io/ns#angular'([A,B,E],D).

'https://knowledgeonwebscale.github.io/ns#angular'([A,B,C],D) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(A >= 0,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(B >= 0,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D = C,[]).
'https://knowledgeonwebscale.github.io/ns#angular'([A,B,C],D) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(A < 0,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(B >= 0,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D is pi-C,[]).
'https://knowledgeonwebscale.github.io/ns#angular'([A,B,C],D) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(A < 0,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(B < 0,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D is C+pi,[]).
'https://knowledgeonwebscale.github.io/ns#angular'([A,B,C],D) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(A >= 0,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(B < 0,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D is 2*pi-C,[]).

'https://knowledgeonwebscale.github.io/ns#minus'([A,B],[C,D]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(C is -A,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D is -B,[]).

'https://knowledgeonwebscale.github.io/ns#subtract'([[A,B],[C,D]],[E,F]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(E is A-C,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(F is B-D,[]).

'https://knowledgeonwebscale.github.io/ns#add'([[A,B],[C,D]],[E,F]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(E is A+C,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(F is B+D,[]).

'https://knowledgeonwebscale.github.io/ns#multiply'([[A,B],[C,D]],[E,F]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(E is A*C-B*D,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(F is A*D+B*C,[]).

'https://knowledgeonwebscale.github.io/ns#inverse'([A,B],[C,D]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(C is A/(A^2+B^2),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(D is -B/(A^2+B^2),[]).

'https://knowledgeonwebscale.github.io/ns#divide'([A,B],C) <=
    'https://knowledgeonwebscale.github.io/ns#inverse'(B,D),
    'https://knowledgeonwebscale.github.io/ns#multiply'([A,D],C).

% query
'https://knowledgeonwebscale.github.io/ns#exp'([[-1,0],[0.5,0]],_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#exp'([[e,0],[0,pi]],_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#log'([[e,0],[-1,0]],_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#log'([[0,1],[0,1]],_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#sin'([1.570796326794897,1.316957896924817],_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#cos'([0,-1.316957896924817],_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#tan'([1.338972522294493,0.4023594781085251],_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#asin'([2,0],_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#acos'([2,0],_ANSWER) => true.
'https://knowledgeonwebscale.github.io/ns#atan'([1,2],_ANSWER) => true.
