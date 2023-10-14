:- dynamic('<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'/2).

% WOMAN(GIRL)
'<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('<http://example.org/ns#GIRL>', '<http://example.org/ns#WOMAN>').

% FLOATS(DUCK)
'<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('<http://example.org/ns#DUCK>', '<http://example.org/ns#FLOATS>').

% SAMEWEIGHT(DUCK,GIRL)
'<http://example.org/ns#SAMEWEIGHT>'('<http://example.org/ns#DUCK>', '<http://example.org/ns#GIRL>').

% BURNS(x) /\ WOMAN(x) => WITCH(x)
'<http://www.w3.org/2000/10/swap/log#nand>'(['_:X'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#BURNS>'),
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#WOMAN>'),
        '<http://www.w3.org/2000/10/swap/log#nand>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#WITCH>')
        )
    )
).

% ISMADEOFWOOD(x) => BURNS(x)
'<http://www.w3.org/2000/10/swap/log#nand>'(['_:X'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#ISMADEOFWOOD>'),
        '<http://www.w3.org/2000/10/swap/log#nand>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#BURNS>')
        )
    )
).

% FLOATS(x) => ISMADEOFWOOD(x)
'<http://www.w3.org/2000/10/swap/log#nand>'(['_:X'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#FLOATS>'),
        '<http://www.w3.org/2000/10/swap/log#nand>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#ISMADEOFWOOD>')
        )
    )
).

% FLOATS(x) /\ SAMEWEIGHT(x,y) => FLOATS(y)
'<http://www.w3.org/2000/10/swap/log#nand>'(['_:X', '_:Y'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#FLOATS>'),
        '<http://example.org/ns#SAMEWEIGHT>'('_:X', '_:Y'),
        '<http://www.w3.org/2000/10/swap/log#nand>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:Y', '<http://example.org/ns#FLOATS>')
        )
    )
).

% questions
'<http://www.w3.org/2000/10/swap/log#nand>'(['_:X'],
    (
        '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#WITCH>'),
        '<http://www.w3.org/2000/10/swap/log#answer>'([],
            '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('_:X', '<http://example.org/ns#WITCH>')
        )
    )
).
