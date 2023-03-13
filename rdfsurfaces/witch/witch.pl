:- dynamic('<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'/2).

:- discontiguous('<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'/2).
:- discontiguous('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'/2).

%[1]     BURNS(x) /\ WOMAN(x)         =>    WITCH(x)
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#BURNS>'),
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#WOMAN>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#WITCH>')
        )
    )
).

%[2]    WOMAN(GIRL)
'<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('<http://example.org/ns#GIRL>', '<http://example.org/ns#WOMAN>').

%[3]    \forall x, ISMADEOFWOOD(x)    =>    BURNS(x)
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#ISMADEOFWOOD>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#BURNS>')
        )
    )
).

%[4]    \forall x, FLOATS(x)         =>    ISMADEOFWOOD(x)
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#FLOATS>'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#ISMADEOFWOOD>')
        )
    )
).

%[5]    FLOATS(DUCK)
'<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('<http://example.org/ns#DUCK>', '<http://example.org/ns#FLOATS>').

%[6]    \forall x,y FLOATS(x) /\ SAMEWEIGHT(x,y) =>    FLOATS(y)
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X', '_:Y'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#FLOATS>'),
        '<http://example.org/ns#SAMEWEIGHT>'('_:X', '_:Y'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y', '<http://example.org/ns#FLOATS>')
        )
    )
).

% and, by experiment
% [7]    SAMEWEIGHT(DUCK,GIRL)
'<http://example.org/ns#SAMEWEIGHT>'('<http://example.org/ns#DUCK>', '<http://example.org/ns#GIRL>').

% query
'<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(['_:X'],
    '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#WITCH>')
).
