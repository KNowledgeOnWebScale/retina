flag('quantify', 'https://eyereasoner.github.io/.well-known/genid/37061b6c-295a-4019-9ebe-37c457e3f637#').
scope('<file:///home/jdroo/github.com/RebekkaMa/rs2fol/examples/sequent-calculus/combined-rules/universal-quantification/universal_5_s.n3s>').
pfx('log:', '<http://www.w3.org/2000/10/swap/log#>').
pfx(:, '<http://example.org/ns#>').
:- dynamic('<http://example.org/ns#is>'/2).
'<http://example.org/ns#is>'('<http://example.org/ns#sun>', '<http://example.org/ns#shining>').
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], ('<http://example.org/ns#is>'('<http://example.org/ns#sun>', '<http://example.org/ns#shining>'), '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<https://eyereasoner.github.io/.well-known/genid/37061b6c-295a-4019-9ebe-37c457e3f637#e_y_1_1_1>'], '<http://example.org/ns#is>'('<https://eyereasoner.github.io/.well-known/genid/37061b6c-295a-4019-9ebe-37c457e3f637#e_y_1_1_1>', '<http://example.org/ns#happy>')))).
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], ('<http://example.org/ns#is>'('<https://eyereasoner.github.io/.well-known/genid/37061b6c-295a-4019-9ebe-37c457e3f637#e_y_1>', '<http://example.org/ns#happy>'), '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], '<http://example.org/ns#is>'('<http://example.org/ns#This>', '<http://example.org/ns#Working>')))).
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], '<http://example.org/ns#is>'('<http://example.org/ns#This>', '<http://example.org/ns#Working>')).
scount(4).
end_of_file.
