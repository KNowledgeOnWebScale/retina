% -------------------
% Plows -- Jos De Roo
% -------------------
%
% See https://josd.github.io/plows/
%

:- use_module(library(lists)).
:- use_module(library(terms)).

:- op(1150, xfx, =>).

:- dynamic(brake/0).
:- dynamic(label/1).
:- dynamic(step/1).
:- dynamic(pred/1).

% forward chaining
forward :-
    (Prem => Conc),
    Prem,
    \+Conc,
    labelvars(Conc),
    astep((Prem => Conc)),
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
    numbervars(Term,Current,Next),
    assertz(label(Next)).

% assert step
astep((Prem => Conc)) :-
    assertz(step((Prem => Conc))),
    aconc(Conc).

% assert new conclusions
aconc((A, B)) :-
    !,
    aconc(A),
    aconc(B).
aconc(A) :-
    (   \+A
    ->  assertz(A),
        (   functor(A, B, C),
            \+pred(B/C)
        ->  assertz(pred(B/C))
        ;   true
        )
    ;   true
    ).

%
% built-ins
%
'https://josd.github.io/plows#relate'(Relation, [P|Args]) :-
    (   var(P)
    ->  pred(P/C),
        length(Args, C)
    ;   true
    ),
    Relation =.. [P|Args].
