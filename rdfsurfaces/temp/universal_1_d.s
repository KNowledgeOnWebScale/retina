flag('quantify', 'https://eyereasoner.github.io/.well-known/genid/d7128d35-6347-4b72-b714-ffda03f0e782#').
scope('<file:///home/jdroo/github.com/RebekkaMa/rs2fol/examples/sequent-calculus/combined-rules/universal-quantification/universal_1_d.n3s>').
pfx('log:', '<http://www.w3.org/2000/10/swap/log#>').
pfx(:, '<http://example.org/ns#>').
:- dynamic('<http://example.org/ns#is>'/2).
'<http://example.org/ns#is>'('<http://example.org/ns#This>', '<http://example.org/ns#working1>').
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<https://eyereasoner.github.io/.well-known/genid/d7128d35-6347-4b72-b714-ffda03f0e782#e_x_1_1>', '<https://eyereasoner.github.io/.well-known/genid/d7128d35-6347-4b72-b714-ffda03f0e782#e_y_1_1>'], ('<http://example.org/ns#is>'('<https://eyereasoner.github.io/.well-known/genid/d7128d35-6347-4b72-b714-ffda03f0e782#e_x_1_1>', '<http://example.org/ns#working1>'), '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], '<http://example.org/ns#is>'('<https://eyereasoner.github.io/.well-known/genid/d7128d35-6347-4b72-b714-ffda03f0e782#e_y_1_1>', '<http://example.org/ns#working>')))).
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], '<http://example.org/ns#is>'('<http://example.org/ns#This>', '<http://example.org/ns#working>')).
scount(3).
end_of_file.
