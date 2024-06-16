flag('quantify', 'https://eyereasoner.github.io/.well-known/genid/822db0e3-f01d-42ee-ba15-84359eb9c346#').
scope('<file:///home/jdroo/temp/da1.n3s>').
pfx('log:', '<http://www.w3.org/2000/10/swap/log#>').
pfx(:, '<http://example.org/ns#>').
:- dynamic('<http://example.org/ns#is>'/2).
'<http://example.org/ns#is>'('<http://example.org/ns#sun>', '<http://example.org/ns#shining>').
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], ('<http://example.org/ns#is>'('<http://example.org/ns#sun>', '<http://example.org/ns#shining>'), '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(['<https://eyereasoner.github.io/.well-known/genid/822db0e3-f01d-42ee-ba15-84359eb9c346#e_y_1_1_1>'], '<http://example.org/ns#is>'('<https://eyereasoner.github.io/.well-known/genid/822db0e3-f01d-42ee-ba15-84359eb9c346#e_y_1_1_1>', '<http://example.org/ns#happy>')))).
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], ('<http://example.org/ns#is>'('<https://eyereasoner.github.io/.well-known/genid/822db0e3-f01d-42ee-ba15-84359eb9c346#e_y_1>', '<http://example.org/ns#happy>'), '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], '<http://example.org/ns#is>'('<http://example.org/ns#This>', '<http://example.org/ns#Working>')))).
'<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], '<http://example.org/ns#is>'('<http://example.org/ns#This>', '<http://example.org/ns#Working>')).
scount(4).
end_of_file.
