% --------------------
% Marble -- Jos De Roo
% --------------------
%
% See https://github.com/eyereasoner/marble#readme
%

:- use_module(library(iso_ext)).
:- use_module(library(terms)).

:- dynamic(brake/0).
:- dynamic(label/1).
:- dynamic(pred/1).
:- dynamic(answer/1).

% forward chaining
forward :-
    implies(Prem, Conc),
    Prem,
    \+Conc,
    labelvars(Conc),
    astep(Conc),
    retract(brake),
    fail.
forward :-
    (   brake
    ->  !
    ;   assertz(brake),
        forward
    ).

% create witnesses
labelvars(Term) :-
    (   retract(label(Current))
    ->  true
    ;   Current = 0
    ),
    numbervars(Term, Current, Next),
    assertz(label(Next)).

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

% run
run :-
    forward,
    forall(
        answer(A),
        (   write(A),
            nl
        )
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
