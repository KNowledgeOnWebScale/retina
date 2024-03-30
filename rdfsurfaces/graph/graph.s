:- dynamic('<urn:example:path>'/2).

% French roads
'<urn:example:oneway>'('<urn:example:paris>','<urn:example:orleans>').
'<urn:example:oneway>'('<urn:example:paris>','<urn:example:chartres>').
'<urn:example:oneway>'('<urn:example:paris>','<urn:example:amiens>').
'<urn:example:oneway>'('<urn:example:orleans>','<urn:example:blois>').
'<urn:example:oneway>'('<urn:example:orleans>','<urn:example:bourges>').
'<urn:example:oneway>'('<urn:example:blois>','<urn:example:tours>').
'<urn:example:oneway>'('<urn:example:chartres>','<urn:example:lemans>').
'<urn:example:oneway>'('<urn:example:lemans>','<urn:example:angers>').
'<urn:example:oneway>'('<urn:example:lemans>','<urn:example:tours>').
'<urn:example:oneway>'('<urn:example:angers>','<urn:example:nantes>').

% oneway subproperty of path
'<http://www.w3.org/2000/10/swap/log#nand>'(['_:A', '_:B'],
    (
        '<urn:example:oneway>'('_:A', '_:B'),
        '<http://www.w3.org/2000/10/swap/log#nand>'([],
            '<urn:example:path>'('_:A', '_:B')
        )
    )
).

% path transitive property
'<http://www.w3.org/2000/10/swap/log#nand>'(['_:A', '_:B', '_:C'],
    (
        '<urn:example:path>'('_:B', '_:C'),
        '<urn:example:path>'('_:A', '_:B'),
        '<http://www.w3.org/2000/10/swap/log#nand>'([],
            '<urn:example:path>'('_:A', '_:C')
        )
    )
).

% questions
'<http://www.w3.org/2000/10/swap/log#nand>'(['_:A'],
    (
        '<urn:example:path>'('_:A', '<urn:example:nantes>'),
        '<http://www.w3.org/2000/10/swap/log#nans>'([],
            '<urn:example:path>'('_:A', '<urn:example:nantes>')
        )
    )
).
