:- dynamic('<https://josd.github.io/eye/ns#path>'/2).

% French roads
'<https://josd.github.io/eye/ns#oneway>'('<http://example.org/ns#paris>','<http://example.org/ns#orleans>').
'<https://josd.github.io/eye/ns#oneway>'('<http://example.org/ns#paris>','<http://example.org/ns#chartres>').
'<https://josd.github.io/eye/ns#oneway>'('<http://example.org/ns#paris>','<http://example.org/ns#amiens>').
'<https://josd.github.io/eye/ns#oneway>'('<http://example.org/ns#orleans>','<http://example.org/ns#blois>').
'<https://josd.github.io/eye/ns#oneway>'('<http://example.org/ns#orleans>','<http://example.org/ns#bourges>').
'<https://josd.github.io/eye/ns#oneway>'('<http://example.org/ns#blois>','<http://example.org/ns#tours>').
'<https://josd.github.io/eye/ns#oneway>'('<http://example.org/ns#chartres>','<http://example.org/ns#lemans>').
'<https://josd.github.io/eye/ns#oneway>'('<http://example.org/ns#lemans>','<http://example.org/ns#angers>').
'<https://josd.github.io/eye/ns#oneway>'('<http://example.org/ns#lemans>','<http://example.org/ns#tours>').
'<https://josd.github.io/eye/ns#oneway>'('<http://example.org/ns#angers>','<http://example.org/ns#nantes>').

% oneway subproperty of path
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B'],
    (
        '<https://josd.github.io/eye/ns#oneway>'('_:A', '_:B'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<https://josd.github.io/eye/ns#path>'('_:A', '_:B')
        )
    )
).

% path transitive property
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B', '_:C'],
    (
        '<https://josd.github.io/eye/ns#path>'('_:B', '_:C'),
        '<https://josd.github.io/eye/ns#path>'('_:A', '_:B'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<https://josd.github.io/eye/ns#path>'('_:A', '_:C')
        )
    )
).

% query
'<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(['_:A'],
    '<https://josd.github.io/eye/ns#path>'('_:A', '<http://example.org/ns#nantes>')
).
