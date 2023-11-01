% everybody loves somebody who is lonely
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:A'],
    (
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['_:B'],
            (
                '<http://books.example/loves>'('_:A','_:B'),
                '<http://books.example/is>'('_:B','<http://books.example/lonely>')
            )
        )
    )
).

% questions
'<http://www.w3.org/2000/10/swap/log#onQuestionSurface>'(['_:A'],
    (
        '<http://books.example/loves>'('<http://books.example/bob>','_:A'),
        '<http://books.example/is>'('_:A','<http://books.example/lonely>'),
        '<http://www.w3.org/2000/10/swap/log#onAnswerSurface>'([],
            '<urn:example:is>'('<urn:example:test>', true)
        )
    )
).
