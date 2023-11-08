% Socrates is a mortal

'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('http://example.org/ns#Socrates','http://example.org/ns#Man').

'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/ns#Mortal') <=
    'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/ns#Man'),
    'http://josd.github.io/ns#add_lemma'('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/ns#Man'),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X,'http://example.org/ns#Mortal')).

% query
'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_WHO,_WHAT) => true.
