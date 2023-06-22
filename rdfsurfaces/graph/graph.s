:- dynamic('<https://eyereasoner.github.io/eye/ns#path>'/2).

% French roads
'<https://eyereasoner.github.io/eye/ns#oneway>'('<http://example.org/ns#paris>','<http://example.org/ns#orleans>').
'<https://eyereasoner.github.io/eye/ns#oneway>'('<http://example.org/ns#paris>','<http://example.org/ns#chartres>').
'<https://eyereasoner.github.io/eye/ns#oneway>'('<http://example.org/ns#paris>','<http://example.org/ns#amiens>').
'<https://eyereasoner.github.io/eye/ns#oneway>'('<http://example.org/ns#orleans>','<http://example.org/ns#blois>').
'<https://eyereasoner.github.io/eye/ns#oneway>'('<http://example.org/ns#orleans>','<http://example.org/ns#bourges>').
'<https://eyereasoner.github.io/eye/ns#oneway>'('<http://example.org/ns#blois>','<http://example.org/ns#tours>').
'<https://eyereasoner.github.io/eye/ns#oneway>'('<http://example.org/ns#chartres>','<http://example.org/ns#lemans>').
'<https://eyereasoner.github.io/eye/ns#oneway>'('<http://example.org/ns#lemans>','<http://example.org/ns#angers>').
'<https://eyereasoner.github.io/eye/ns#oneway>'('<http://example.org/ns#lemans>','<http://example.org/ns#tours>').
'<https://eyereasoner.github.io/eye/ns#oneway>'('<http://example.org/ns#angers>','<http://example.org/ns#nantes>').

% oneway subproperty of path
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B'],
    (
        '<https://eyereasoner.github.io/eye/ns#oneway>'('_:A', '_:B'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<https://eyereasoner.github.io/eye/ns#path>'('_:A', '_:B')
        )
    )
).

% path transitive property
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B', '_:C'],
    (
        '<https://eyereasoner.github.io/eye/ns#path>'('_:B', '_:C'),
        '<https://eyereasoner.github.io/eye/ns#path>'('_:A', '_:B'),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            '<https://eyereasoner.github.io/eye/ns#path>'('_:A', '_:C')
        )
    )
).

% query
'<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(['_:A'],
    '<https://eyereasoner.github.io/eye/ns#path>'('_:A', '<http://example.org/ns#nantes>')
).
