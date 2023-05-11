% Peano arithmetic

% add
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A'],
    '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<http://www.w3.org/2000/10/swap/pragma#query>'],
        '<urn:example:add>'(['_:A', 0], '_:A')
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B', '_:C'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<http://www.w3.org/2000/10/swap/pragma#query>'],
            '<urn:example:add>'(
                ['_:A', ['<urn:example:s>', '_:B']],
                ['<urn:example:s>', '_:C']
            )
        ),
        '<urn:example:add>'(['_:A', '_:B'], '_:C')
    )
).

% multiply
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A'],
    '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<http://www.w3.org/2000/10/swap/pragma#query>'],
        '<urn:example:multiply>'(['_:A', 0], 0)
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B', '_:C', '_:D'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<http://www.w3.org/2000/10/swap/pragma#query>'],
            '<urn:example:multiply>'(['_:A', ['<urn:example:s>', '_:B']], '_:C')
        ),
        '<urn:example:multiply>'(['_:A', '_:B'], '_:D'),
        '<urn:example:add>'(['_:A', '_:D'], '_:C')
    )
).

% query
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<http://www.w3.org/2000/10/swap/pragma#query>', '_:A', '_:B'],
    (
        '<urn:example:add>'([['<urn:example:s>', ['<urn:example:s>', 0]], ['<urn:example:s>', ['<urn:example:s>', ['<urn:example:s>', 0]]]], '_:A'),
        '<urn:example:multiply>'(['_:A', ['<urn:example:s>', ['<urn:example:s>', ['<urn:example:s>', ['<urn:example:s>', 0]]]]], '_:B')
    )
).
