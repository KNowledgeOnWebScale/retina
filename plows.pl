% ---------------------
% Plows -- Jos De Roo
% ---------------------
%
% See https://github.com/josd/plows#readme
%

:- use_module(library(lists)).
:- use_module(library(terms)).
:- use_module(library(iso_ext)).

:- op(1150, xfx, =>).

:- dynamic(pred/1).

% forward chaining
forward :-
    (Prem => Conc),
    Prem,
    \+Conc,
    labelvars(Conc),
    astep(Conc),
    bb_put(brake, false),
    fail.
forward :-
    (   bb_get(brake, true)
    ->  !
    ;   bb_put(brake, true),
        forward
    ).

% create witnesses
labelvars(Term) :-
    (   bb_get(label, Current)
    ->  true
    ;   Current = 0
    ),
    numbervars(Term, Current, Next),
    bb_put(label, Next).

% assert new step
astep((A, B)) :-
    !,
    astep(A),
    astep(B).
astep(A) :-
    (   \+A
    ->  assertz(A),
        (   functor(A, B, 2),
            \+pred(B)
        ->  assertz(pred(B))
        ;   true
        )
    ;   true
    ).

%
% built-ins
%
'<https://josd.github.io/eye/ns#pso_triple>'([P, S, O], Triple) :-
    (   var(P)
    ->  pred(P)
    ;   true
    ),
    Triple =.. [P, S, O].
