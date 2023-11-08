% See https://en.wikipedia.org/wiki/Complex_number

'http://josd.github.io/ns#exp'([[A,B],[C,D]],[E,F]) <=
    'http://josd.github.io/ns#polar'([A,B],[G,H]),
    'http://josd.github.io/ns#builtin'(E is G^C*exp(-D*H)*cos(D*log(G)+C*H),[]),
    'http://josd.github.io/ns#builtin'(F is G^C*exp(-D*H)*sin(D*log(G)+C*H),[]).

'http://josd.github.io/ns#log'([[A,B],[C,D]],[E,F]) <=
    'http://josd.github.io/ns#polar'([A,B],[G,H]),
    'http://josd.github.io/ns#polar'([C,D],[I,J]),
    'http://josd.github.io/ns#builtin'(K is log(G),[]),
    'http://josd.github.io/ns#builtin'(L is log(I),[]),
    'http://josd.github.io/ns#divide'([[L,J],[K,H]],[E,F]).

'http://josd.github.io/ns#sin'([A,B],[C,D]) <=
    'http://josd.github.io/ns#builtin'(C is sin(A)*(exp(B)+exp(-B))/2,[]),
    'http://josd.github.io/ns#builtin'(D is cos(A)*(exp(B)-exp(-B))/2,[]).

'http://josd.github.io/ns#cos'([A,B],[C,D]) <=
    'http://josd.github.io/ns#builtin'(C is cos(A)*(exp(B)+exp(-B))/2,[]),
    'http://josd.github.io/ns#builtin'(D is -sin(A)*(exp(B)-exp(-B))/2,[]).

'http://josd.github.io/ns#tan'(A,B) <=
    'http://josd.github.io/ns#sin'(A,C),
    'http://josd.github.io/ns#cos'(A,D),
    'http://josd.github.io/ns#divide'([C,D],B).

'http://josd.github.io/ns#asin'([A,B],[C,D]) <=
    'http://josd.github.io/ns#builtin'(E is (sqrt((1+A)^2+B^2)-sqrt((1-A)^2+B^2))/2,[]),
    'http://josd.github.io/ns#builtin'(F is (sqrt((1+A)^2+B^2)+sqrt((1-A)^2+B^2))/2,[]),
    'http://josd.github.io/ns#builtin'(C is asin(E),[]),
    'http://josd.github.io/ns#builtin'(D is log(F+sqrt(F^2-1)),[]).

'http://josd.github.io/ns#acos'([A,B],[C,D]) <=
    'http://josd.github.io/ns#builtin'(E is (sqrt((1+A)^2+B^2)-sqrt((1-A)^2+B^2))/2,[]),
    'http://josd.github.io/ns#builtin'(F is (sqrt((1+A)^2+B^2)+sqrt((1-A)^2+B^2))/2,[]),
    'http://josd.github.io/ns#builtin'(C is acos(E),[]),
    'http://josd.github.io/ns#builtin'(D is -log(F+sqrt(F^2-1)),[]).

'http://josd.github.io/ns#atan'(A,B) <=
    'http://josd.github.io/ns#subtract'([[0,1],A],C),
    'http://josd.github.io/ns#add'([[0,1],A],D),
    'http://josd.github.io/ns#divide'([C,D],E),
    'http://josd.github.io/ns#log'([[e,0],E],F),
    'http://josd.github.io/ns#divide'([F,[0,2]],B).

'http://josd.github.io/ns#polar'([A,B],[C,D]) <=
    'http://josd.github.io/ns#builtin'(C is sqrt(A^2+B^2),[]),
    'http://josd.github.io/ns#builtin'(E is acos(abs(A)/C),[]),
    'http://josd.github.io/ns#angular'([A,B,E],D).

'http://josd.github.io/ns#angular'([A,B,C],D) <=
    'http://josd.github.io/ns#builtin'(A >= 0,[]),
    'http://josd.github.io/ns#builtin'(B >= 0,[]),
    'http://josd.github.io/ns#builtin'(D = C,[]).
'http://josd.github.io/ns#angular'([A,B,C],D) <=
    'http://josd.github.io/ns#builtin'(A < 0,[]),
    'http://josd.github.io/ns#builtin'(B >= 0,[]),
    'http://josd.github.io/ns#builtin'(D is pi-C,[]).
'http://josd.github.io/ns#angular'([A,B,C],D) <=
    'http://josd.github.io/ns#builtin'(A < 0,[]),
    'http://josd.github.io/ns#builtin'(B < 0,[]),
    'http://josd.github.io/ns#builtin'(D is C+pi,[]).
'http://josd.github.io/ns#angular'([A,B,C],D) <=
    'http://josd.github.io/ns#builtin'(A >= 0,[]),
    'http://josd.github.io/ns#builtin'(B < 0,[]),
    'http://josd.github.io/ns#builtin'(D is 2*pi-C,[]).

'http://josd.github.io/ns#minus'([A,B],[C,D]) <=
    'http://josd.github.io/ns#builtin'(C is -A,[]),
    'http://josd.github.io/ns#builtin'(D is -B,[]).

'http://josd.github.io/ns#subtract'([[A,B],[C,D]],[E,F]) <=
    'http://josd.github.io/ns#builtin'(E is A-C,[]),
    'http://josd.github.io/ns#builtin'(F is B-D,[]).

'http://josd.github.io/ns#add'([[A,B],[C,D]],[E,F]) <=
    'http://josd.github.io/ns#builtin'(E is A+C,[]),
    'http://josd.github.io/ns#builtin'(F is B+D,[]).

'http://josd.github.io/ns#multiply'([[A,B],[C,D]],[E,F]) <=
    'http://josd.github.io/ns#builtin'(E is A*C-B*D,[]),
    'http://josd.github.io/ns#builtin'(F is A*D+B*C,[]).

'http://josd.github.io/ns#inverse'([A,B],[C,D]) <=
    'http://josd.github.io/ns#builtin'(C is A/(A^2+B^2),[]),
    'http://josd.github.io/ns#builtin'(D is -B/(A^2+B^2),[]).

'http://josd.github.io/ns#divide'([A,B],C) <=
    'http://josd.github.io/ns#inverse'(B,D),
    'http://josd.github.io/ns#multiply'([A,D],C).

% query
'http://josd.github.io/ns#exp'([[-1,0],[0.5,0]],_ANSWER) => true.
'http://josd.github.io/ns#exp'([[e,0],[0,pi]],_ANSWER) => true.
'http://josd.github.io/ns#log'([[e,0],[-1,0]],_ANSWER) => true.
'http://josd.github.io/ns#log'([[0,1],[0,1]],_ANSWER) => true.
'http://josd.github.io/ns#sin'([1.570796326794897,1.316957896924817],_ANSWER) => true.
'http://josd.github.io/ns#cos'([0,-1.316957896924817],_ANSWER) => true.
'http://josd.github.io/ns#tan'([1.338972522294493,0.4023594781085251],_ANSWER) => true.
'http://josd.github.io/ns#asin'([2,0],_ANSWER) => true.
'http://josd.github.io/ns#acos'([2,0],_ANSWER) => true.
'http://josd.github.io/ns#atan'([1,2],_ANSWER) => true.
