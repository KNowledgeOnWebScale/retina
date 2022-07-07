% Traversing graph paths

:- use_module('../imagining.pl').

:- dynamic('https://josd.github.io/imagining#path'/2).

'https://josd.github.io/imagining#oneway'('http://example.org/ns#paris', 'http://example.org/ns#orleans').
'https://josd.github.io/imagining#oneway'('http://example.org/ns#paris', 'http://example.org/ns#chartres').
'https://josd.github.io/imagining#oneway'('http://example.org/ns#paris', 'http://example.org/ns#amiens').
'https://josd.github.io/imagining#oneway'('http://example.org/ns#orleans', 'http://example.org/ns#blois').
'https://josd.github.io/imagining#oneway'('http://example.org/ns#orleans', 'http://example.org/ns#bourges').
'https://josd.github.io/imagining#oneway'('http://example.org/ns#blois', 'http://example.org/ns#tours').
'https://josd.github.io/imagining#oneway'('http://example.org/ns#chartres', 'http://example.org/ns#lemans').
'https://josd.github.io/imagining#oneway'('http://example.org/ns#lemans', 'http://example.org/ns#angers').
'https://josd.github.io/imagining#oneway'('http://example.org/ns#lemans', 'http://example.org/ns#tours').
'https://josd.github.io/imagining#oneway'('http://example.org/ns#angers', 'http://example.org/ns#nantes').

'https://josd.github.io/imagining#oneway'(A, B) => 'https://josd.github.io/imagining#path'(A, B).
'https://josd.github.io/imagining#path'(A, B), 'https://josd.github.io/imagining#path'(B, C) => 'https://josd.github.io/imagining#path'(A, C).

run :-
    forward,
    'https://josd.github.io/imagining#relate'(Conc, _),
    step((Prem => Conc)),
    writeq(step((Prem => Conc))),
    write('.\n'),
    writeq(Conc),
    write('.\n\n'),
    fail;
    true.
