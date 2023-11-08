% Lee routing for VLSI circuits
% Code from the book "The Art of Prolog" Chapter 16

'https://knowledgeonwebscale.github.io/ns#route'([Source,Destination,Obstacles],Path) <=
    'https://knowledgeonwebscale.github.io/ns#waves'([Destination,[[Source],[]],Obstacles],Waves),
    'https://knowledgeonwebscale.github.io/ns#path'([Source,Destination,Waves],Path).

% 'https://knowledgeonwebscale.github.io/ns#waves'([Destination,Wavessofar,Obstacles],Waves)
'https://knowledgeonwebscale.github.io/ns#waves'([B,[Wave|Waves],_],Waves) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(member(B,Wave),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(!,[]).
'https://knowledgeonwebscale.github.io/ns#waves'([B,[Wave,LastWave|LastWaves],Obstacles],Waves) <=
    'https://knowledgeonwebscale.github.io/ns#next_wave'([Wave,LastWave,Obstacles],NextWave),
    'https://knowledgeonwebscale.github.io/ns#waves'([B,[NextWave,Wave,LastWave|LastWaves],Obstacles],Waves).

% 'https://knowledgeonwebscale.github.io/ns#next_wave'([Wave,LastWave,Obstacles],NextWave)
'https://knowledgeonwebscale.github.io/ns#next_wave'([Wave,LastWave,Obstacles],NextWave) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(setof(X,'https://knowledgeonwebscale.github.io/ns#admissible'([X,Wave,LastWave],Obstacles),NextWave),[]).

'https://knowledgeonwebscale.github.io/ns#admissible'([X,Wave,LastWave],Obstacles) <=
    'https://knowledgeonwebscale.github.io/ns#adjacent'([X,Wave],Obstacles),
    'https://knowledgeonwebscale.github.io/ns#builtin'(\+ member(X,LastWave),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(\+ member(X,Wave),[]).

'https://knowledgeonwebscale.github.io/ns#adjacent'([X,Wave],Obstacles) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(member(X1,Wave),[]),
    'https://knowledgeonwebscale.github.io/ns#neighbor'(X1,X),
    'https://knowledgeonwebscale.github.io/ns#builtin'(\+ 'https://knowledgeonwebscale.github.io/ns#obstructed'(X,Obstacles),[]).

'https://knowledgeonwebscale.github.io/ns#neighbor'([X1,Y],[X2,Y]) <=
    'https://knowledgeonwebscale.github.io/ns#next_to'(X1,X2).
'https://knowledgeonwebscale.github.io/ns#neighbor'([X,Y1],[X,Y2]) <=
    'https://knowledgeonwebscale.github.io/ns#next_to'(Y1,Y2).

'https://knowledgeonwebscale.github.io/ns#next_to'(X,X1) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(X1 is X+1,[]).
'https://knowledgeonwebscale.github.io/ns#next_to'(X,X1) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(X > 0,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(X1 is X-1,[]).

'https://knowledgeonwebscale.github.io/ns#obstructed'(Point,Obstacles) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(member(Obstacle,Obstacles),[]),
    'https://knowledgeonwebscale.github.io/ns#obstructs'(Point,Obstacle).

'https://knowledgeonwebscale.github.io/ns#obstructs'([X,Y],[[X,Y1],[_,Y2]]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(Y1 =< Y,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Y =< Y2,[]).
'https://knowledgeonwebscale.github.io/ns#obstructs'([X,Y],[[_,Y1],[X,Y2]]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(Y1 =< Y,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Y =< Y2,[]).
'https://knowledgeonwebscale.github.io/ns#obstructs'([X,Y],[[X1,Y],[X2,_]]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(X1 =< X,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(X =< X2,[]).
'https://knowledgeonwebscale.github.io/ns#obstructs'([X,Y],[[X1,_],[X2,Y]]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(X1 =< X,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(X =< X2,[]).

% 'https://knowledgeonwebscale.github.io/ns#path'([Source,Destination,Waves],Path)
'https://knowledgeonwebscale.github.io/ns#path'([A,A,_],[A]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(!,[]).
'https://knowledgeonwebscale.github.io/ns#path'([A,B,[Wave|Waves]],[B|Path]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(member(B1,Wave),[]),
    'https://knowledgeonwebscale.github.io/ns#neighbor'(B,B1),
    'https://knowledgeonwebscale.github.io/ns#builtin'(!,[]),
    'https://knowledgeonwebscale.github.io/ns#path'([A,B1,Waves],Path).

% query
'https://knowledgeonwebscale.github.io/ns#route'([[1,1],[9,8],[[[2,3],[4,5]],[[6,6],[8,8]]]],_ANSWER) => true.
