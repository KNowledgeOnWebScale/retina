% Lee routing for VLSI circuits
% Code from the book "The Art of Prolog" Chapter 16

'http://josd.github.io/ns#route'([Source,Destination,Obstacles],Path) <=
    'http://josd.github.io/ns#waves'([Destination,[[Source],[]],Obstacles],Waves),
    'http://josd.github.io/ns#path'([Source,Destination,Waves],Path).

% 'http://josd.github.io/ns#waves'([Destination,Wavessofar,Obstacles],Waves)
'http://josd.github.io/ns#waves'([B,[Wave|Waves],_],Waves) <=
    'http://josd.github.io/ns#builtin'(member(B,Wave),[]),
    'http://josd.github.io/ns#builtin'(!,[]).
'http://josd.github.io/ns#waves'([B,[Wave,LastWave|LastWaves],Obstacles],Waves) <=
    'http://josd.github.io/ns#next_wave'([Wave,LastWave,Obstacles],NextWave),
    'http://josd.github.io/ns#waves'([B,[NextWave,Wave,LastWave|LastWaves],Obstacles],Waves).

% 'http://josd.github.io/ns#next_wave'([Wave,LastWave,Obstacles],NextWave)
'http://josd.github.io/ns#next_wave'([Wave,LastWave,Obstacles],NextWave) <=
    'http://josd.github.io/ns#builtin'(setof(X,'http://josd.github.io/ns#admissible'([X,Wave,LastWave],Obstacles),NextWave),[]).

'http://josd.github.io/ns#admissible'([X,Wave,LastWave],Obstacles) <=
    'http://josd.github.io/ns#adjacent'([X,Wave],Obstacles),
    'http://josd.github.io/ns#builtin'(\+ member(X,LastWave),[]),
    'http://josd.github.io/ns#builtin'(\+ member(X,Wave),[]).

'http://josd.github.io/ns#adjacent'([X,Wave],Obstacles) <=
    'http://josd.github.io/ns#builtin'(member(X1,Wave),[]),
    'http://josd.github.io/ns#neighbor'(X1,X),
    'http://josd.github.io/ns#builtin'(\+ 'http://josd.github.io/ns#obstructed'(X,Obstacles),[]).

'http://josd.github.io/ns#neighbor'([X1,Y],[X2,Y]) <=
    'http://josd.github.io/ns#next_to'(X1,X2).
'http://josd.github.io/ns#neighbor'([X,Y1],[X,Y2]) <=
    'http://josd.github.io/ns#next_to'(Y1,Y2).

'http://josd.github.io/ns#next_to'(X,X1) <=
    'http://josd.github.io/ns#builtin'(X1 is X+1,[]).
'http://josd.github.io/ns#next_to'(X,X1) <=
    'http://josd.github.io/ns#builtin'(X > 0,[]),
    'http://josd.github.io/ns#builtin'(X1 is X-1,[]).

'http://josd.github.io/ns#obstructed'(Point,Obstacles) <=
    'http://josd.github.io/ns#builtin'(member(Obstacle,Obstacles),[]),
    'http://josd.github.io/ns#obstructs'(Point,Obstacle).

'http://josd.github.io/ns#obstructs'([X,Y],[[X,Y1],[_,Y2]]) <=
    'http://josd.github.io/ns#builtin'(Y1 =< Y,[]),
    'http://josd.github.io/ns#builtin'(Y =< Y2,[]).
'http://josd.github.io/ns#obstructs'([X,Y],[[_,Y1],[X,Y2]]) <=
    'http://josd.github.io/ns#builtin'(Y1 =< Y,[]),
    'http://josd.github.io/ns#builtin'(Y =< Y2,[]).
'http://josd.github.io/ns#obstructs'([X,Y],[[X1,Y],[X2,_]]) <=
    'http://josd.github.io/ns#builtin'(X1 =< X,[]),
    'http://josd.github.io/ns#builtin'(X =< X2,[]).
'http://josd.github.io/ns#obstructs'([X,Y],[[X1,_],[X2,Y]]) <=
    'http://josd.github.io/ns#builtin'(X1 =< X,[]),
    'http://josd.github.io/ns#builtin'(X =< X2,[]).

% 'http://josd.github.io/ns#path'([Source,Destination,Waves],Path)
'http://josd.github.io/ns#path'([A,A,_],[A]) <=
    'http://josd.github.io/ns#builtin'(!,[]).
'http://josd.github.io/ns#path'([A,B,[Wave|Waves]],[B|Path]) <=
    'http://josd.github.io/ns#builtin'(member(B1,Wave),[]),
    'http://josd.github.io/ns#neighbor'(B,B1),
    'http://josd.github.io/ns#builtin'(!,[]),
    'http://josd.github.io/ns#path'([A,B1,Waves],Path).

% query
'http://josd.github.io/ns#route'([[1,1],[9,8],[[[2,3],[4,5]],[[6,6],[8,8]]]],_ANSWER) => true.
