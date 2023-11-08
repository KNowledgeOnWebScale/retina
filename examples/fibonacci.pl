'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:X', '_:Y'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple('_:X', '<http://example.org/ns#fibonacci>', '_:Y')
        ),
        '<http://example.org/ns#fib>'(['_:X', 0, 1], '_:Y')
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple([0, '_:A', '_:B'], '<http://example.org/ns#fib>', '_:A')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple([1, '_:A', '_:B'], '<http://example.org/ns#fib>', '_:B')
        )
    )
).

'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A', '_:B', '_:C', '_:D', '_:X', '_:Y'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([],
            triple(['_:X', '_:A', '_:B'], '<http://example.org/ns#fib>', '_:Y')
        ),
        '<http://www.w3.org/2000/10/swap/math#greaterThan>'('_:X', 1),
        '<http://www.w3.org/2000/10/swap/math#difference>'(['_:X', 1], '_:C'),
        '<http://www.w3.org/2000/10/swap/math#sum>'(['_:A', '_:B'], '_:D'),
        '<http://example.org/ns#fib>'(['_:C', '_:B', '_:D'], '_:Y')
    )
).

% queries
'<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(['_:X'],
    (
        '<http://example.org/ns#fibonacci>'(1, '_:X')
    )
).

'<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(['_:X'],
    (
        '<http://example.org/ns#fibonacci>'(2, '_:X')
    )
).

'<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(['_:X'],
    (
        '<http://example.org/ns#fibonacci>'(3, '_:X')
    )
).

'<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(['_:X'],
    (
        '<http://example.org/ns#fibonacci>'(91, '_:X')
    )
).

'<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(['_:X'],
    (
        '<http://example.org/ns#fibonacci>'(283, '_:X')
    )
).

'<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(['_:X'],
    (
        '<http://example.org/ns#fibonacci>'(3674, '_:X')
    )
).
