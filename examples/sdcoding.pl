% Superdense coding using discrete quantum computing

% See https://arxiv.org/pdf/1101.3764.pdf and arxiv.org/pdf/1010.2929.pdf

% Discrete quantum theory is obtained by instantiating the mathematical framework
% of Hilbert spaces with a finite field instead of the field of complex numbers.
% This instantiation collapses much the structure of actual quantum mechanics but
% retains several of its distinguishing characteristics including the notions of
% superposition, interference, and entanglement. Furthermore, discrete quantum
% theory excludes local hidden variable models, has a no-cloning theorem, and can
% express natural counterparts of quantum information protocols such as superdense
% coding and teleportation.

% Surprisingly discrete quantum computing is identical to conventional logic
% programming except for a small twist that is responsible for all the
% "quantum-ness". The twist occurs when merging sets of answers computed by
% several alternatives: the answers are combined using an exclusive version of
% logical disjunction. In other words, the two branches of a choice junction
% exhibit an interference effect: an answer is produced from the junction if it
% occurs in one or the other branch but not both.

'http://josd.github.io/ns#builtin'(dynamic('http://josd.github.io/ns#sdcoding'/2),[]).
'http://josd.github.io/ns#builtin'(dynamic('http://josd.github.io/ns#sdconot'/2),[]).

% |R) = |0, 0) + |1, 1)
'http://example.org/ns#r'(false,false).
'http://example.org/ns#r'(true,true).

% |S) = |0, 1) + |1, 0)
'http://example.org/ns#s'(false,true).
'http://example.org/ns#s'(true,false).

% |U) = |0, 0) + |1, 0) + |1, 1)
'http://example.org/ns#u'(false,false).
'http://example.org/ns#u'(true,false).
'http://example.org/ns#u'(true,true).

% |V ) = |0, 0) + |0, 1) + |1, 0)
'http://example.org/ns#v'(false,false).
'http://example.org/ns#v'(false,true).
'http://example.org/ns#v'(true,false).

% ID |0) = |0)
'http://example.org/ns#id'(false,false).
% ID |1) = |1)
'http://example.org/ns#id'(true,true).

% G |0) = |1)
'http://example.org/ns#g'(false,true).
% G |1) = |0)
'http://example.org/ns#g'(true,false).

% K |0) = |0)
'http://example.org/ns#k'(false,false).
% K |1) = |0) + |1)
'http://example.org/ns#k'(true,false).
'http://example.org/ns#k'(true,true).

% KG
'http://example.org/ns#kg'(X,Y) <= 'http://example.org/ns#g'(X,Z),'http://example.org/ns#k'(Z,Y).

% GK
'http://example.org/ns#gk'(X,Y) <= 'http://example.org/ns#k'(X,Z),'http://example.org/ns#g'(Z,Y).

% alice
'http://example.org/ns#alice'(0,[X,Y]) <= 'http://example.org/ns#id'(X,Y).
'http://example.org/ns#alice'(1,[X,Y]) <= 'http://example.org/ns#g'(X,Y).
'http://example.org/ns#alice'(2,[X,Y]) <= 'http://example.org/ns#k'(X,Y).
'http://example.org/ns#alice'(3,[X,Y]) <= 'http://example.org/ns#kg'(X,Y).

% bob
'http://example.org/ns#bob'([X,Y],0) <= 'http://example.org/ns#gk'(X,Y).
'http://example.org/ns#bob'([X,Y],1) <= 'http://example.org/ns#k'(X,Y).
'http://example.org/ns#bob'([X,Y],2) <= 'http://example.org/ns#g'(X,Y).
'http://example.org/ns#bob'([X,Y],3) <= 'http://example.org/ns#id'(X,Y).

% superdense coding
'http://josd.github.io/ns#sdc'(N,M) <=
    'http://example.org/ns#r'(X,Y),
    'http://example.org/ns#alice'(N,[X,B]),
    'http://example.org/ns#bob'([B,Y],M),
    'http://josd.github.io/ns#sd'(N,M).

% asserting sdcoding an odd number of times
'http://josd.github.io/ns#sd'(N,M) <=
    'http://josd.github.io/ns#sdcoding'(N,M),
    'http://josd.github.io/ns#builtin'(!,[]),
    'http://josd.github.io/ns#builtin'(retract('http://josd.github.io/ns#sdcoding'(N,M)),[]).
'http://josd.github.io/ns#sd'(N,M) <=
    'http://josd.github.io/ns#builtin'(assertz('http://josd.github.io/ns#sdcoding'(N,M)),[]).

% superdense coding appearing an odd number of times
'http://josd.github.io/ns#sdc'(N,M) => 'http://josd.github.io/ns#sdconot'(N,M).

% query
'http://josd.github.io/ns#sdcoding'(_N,_M) => true.
