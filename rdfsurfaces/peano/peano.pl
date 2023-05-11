% Peano arithmetic

% add
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A'],
    '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<http://www.w3.org/2000/10/swap/pragma#query>'],
        '<http://example.org/ns#add>'(['_:A', 0], '_:A')
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B', '_:C'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<http://www.w3.org/2000/10/swap/pragma#query>'],
            '<http://example.org/ns#add>'(
                ['_:A', ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', '_:B']],
                ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', '_:C']
            )
        ),
        '<http://example.org/ns#add>'(['_:A', '_:B'], '_:C')
    )
).

% multiply
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A'],
    '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<http://www.w3.org/2000/10/swap/pragma#query>'],
        '<http://example.org/ns#multiply>'(['_:A', 0], 0)
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B', '_:C', '_:D'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<http://www.w3.org/2000/10/swap/pragma#query>'],
            '<http://example.org/ns#multiply>'(['_:A', ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', '_:B']], '_:C')
        ),
        '<http://example.org/ns#multiply>'(['_:A', '_:B'], '_:D'),
        '<http://example.org/ns#add>'(['_:A', '_:D'], '_:C')
    )
).

% query
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<http://www.w3.org/2000/10/swap/pragma#query>', '_:A', '_:B'],
    (
        '<http://example.org/ns#add>'([['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', 0]], ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', 0]]]], '_:A'),
        '<http://example.org/ns#multiply>'(['_:A', ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', ['<http://www.w3.org/2000/10/swap/pragma#function>', '<http://example.org/ns#s>', 0]]]]], '_:B')
    )
).
