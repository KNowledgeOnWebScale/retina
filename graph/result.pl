step(('https://josd.github.io/imagining#oneway'('http://example.org/ns#paris','http://example.org/ns#orleans')=>'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#orleans'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#orleans').

step(('https://josd.github.io/imagining#oneway'('http://example.org/ns#paris','http://example.org/ns#chartres')=>'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#chartres'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#chartres').

step(('https://josd.github.io/imagining#oneway'('http://example.org/ns#paris','http://example.org/ns#amiens')=>'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#amiens'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#amiens').

step(('https://josd.github.io/imagining#oneway'('http://example.org/ns#orleans','http://example.org/ns#blois')=>'https://josd.github.io/imagining#path'('http://example.org/ns#orleans','http://example.org/ns#blois'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#orleans','http://example.org/ns#blois').

step(('https://josd.github.io/imagining#oneway'('http://example.org/ns#orleans','http://example.org/ns#bourges')=>'https://josd.github.io/imagining#path'('http://example.org/ns#orleans','http://example.org/ns#bourges'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#orleans','http://example.org/ns#bourges').

step(('https://josd.github.io/imagining#oneway'('http://example.org/ns#blois','http://example.org/ns#tours')=>'https://josd.github.io/imagining#path'('http://example.org/ns#blois','http://example.org/ns#tours'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#blois','http://example.org/ns#tours').

step(('https://josd.github.io/imagining#oneway'('http://example.org/ns#chartres','http://example.org/ns#lemans')=>'https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#lemans'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#lemans').

step(('https://josd.github.io/imagining#oneway'('http://example.org/ns#lemans','http://example.org/ns#angers')=>'https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#angers'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#angers').

step(('https://josd.github.io/imagining#oneway'('http://example.org/ns#lemans','http://example.org/ns#tours')=>'https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#tours'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#tours').

step(('https://josd.github.io/imagining#oneway'('http://example.org/ns#angers','http://example.org/ns#nantes')=>'https://josd.github.io/imagining#path'('http://example.org/ns#angers','http://example.org/ns#nantes'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#angers','http://example.org/ns#nantes').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#orleans'),'https://josd.github.io/imagining#path'('http://example.org/ns#orleans','http://example.org/ns#blois')=>'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#blois'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#blois').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#orleans'),'https://josd.github.io/imagining#path'('http://example.org/ns#orleans','http://example.org/ns#bourges')=>'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#bourges'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#bourges').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#chartres'),'https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#lemans')=>'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#lemans'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#lemans').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#orleans','http://example.org/ns#blois'),'https://josd.github.io/imagining#path'('http://example.org/ns#blois','http://example.org/ns#tours')=>'https://josd.github.io/imagining#path'('http://example.org/ns#orleans','http://example.org/ns#tours'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#orleans','http://example.org/ns#tours').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#lemans'),'https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#angers')=>'https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#angers'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#angers').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#lemans'),'https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#tours')=>'https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#tours'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#tours').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#angers'),'https://josd.github.io/imagining#path'('http://example.org/ns#angers','http://example.org/ns#nantes')=>'https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#nantes'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#nantes').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#orleans'),'https://josd.github.io/imagining#path'('http://example.org/ns#orleans','http://example.org/ns#tours')=>'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#tours'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#tours').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#chartres'),'https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#angers')=>'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#angers'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#angers').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#lemans'),'https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#nantes')=>'https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#nantes'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#chartres','http://example.org/ns#nantes').

step(('https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#lemans'),'https://josd.github.io/imagining#path'('http://example.org/ns#lemans','http://example.org/ns#nantes')=>'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#nantes'))).
'https://josd.github.io/imagining#path'('http://example.org/ns#paris','http://example.org/ns#nantes').

