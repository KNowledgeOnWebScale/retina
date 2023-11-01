% Peano arithmetic

% add
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple(['_:A', 0], '<urn:example:add>', '_:A')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B', '_:C'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple(['_:A', ['<urn:example:s>', '_:B']], '<urn:example:add>', ['<urn:example:s>', '_:C'])
        ),
        '<urn:example:add>'(['_:A', '_:B'], '_:C')
    )
).

% multiply
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple(['_:A', 0], '<urn:example:multiply>', 0)
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B', '_:C', '_:D'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple(['_:A', ['<urn:example:s>', '_:B']], '<urn:example:multiply>', '_:C')
        ),
        '<urn:example:multiply>'(['_:A', '_:B'], '_:D'),
        '<urn:example:add>'(['_:A', '_:D'], '_:C')
    )
).

% factorial
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple('_:A', '<urn:example:factorial>', '_:B')
        ),
        '<urn:example:fac>'(['_:A', ['<urn:example:s>', 0]], '_:B')
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple([0, '_:A'], '<urn:example:fac>', '_:A')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B', '_:C', '_:D'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple([['<urn:example:s>', '_:A'], '_:B'], '<urn:example:fac>', '_:C')
        ),
        '<urn:example:multiply>'(['_:B', ['<urn:example:s>', '_:A']], '_:D'),
        '<urn:example:fac>'(['_:A', '_:D'], '_:C')
    )
).

% questions
'<http://www.w3.org/2000/10/swap/log#onQuestionSurface>'(['_:A', '_:B', '_:C'],
    (
        '<urn:example:add>'([['<urn:example:s>', 0], ['<urn:example:s>', ['<urn:example:s>', 0]]], '_:A'),
        '<urn:example:multiply>'(['_:A', ['<urn:example:s>', ['<urn:example:s>', 0]]], '_:B'),
        '<urn:example:factorial>'('_:B', '_:C'),
        '<http://www.w3.org/2000/10/swap/log#onAnswerSurface>'([],
            '<urn:example:is>'('<urn:example:test>', '_:C')
        )
    )
).
