% -----------------
% phy -- Jos De Roo
% -----------------
%
% See https://github.com/josd/phy
%

:- use_module(library(between)).
:- use_module(library(format)).
:- use_module(library(iso_ext)).
:- use_module(library(lists)).
:- use_module(library(si)).
:- use_module(library(terms)).

:- dynamic(answer/1).
:- dynamic(brake/0).
:- dynamic(implies/2).
:- dynamic(label/1).
:- dynamic(pred/1).
:- dynamic(recursion/1).
:- dynamic('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'/2).
:- dynamic('<http://www.w3.org/2000/10/swap/log#onNeutralSurface>'/2).
:- dynamic('<http://www.w3.org/2000/10/swap/log#onPositiveSurface>'/2).
:- dynamic('<http://www.w3.org/2000/10/swap/log#onQuerySurface>'/2).

version_info('phy v2.9.2 (2023-04-20)').

term_expansion(A, _) :-
    A =.. [P, _, _],
    sub_atom(P, 0, 5, _, '<http'),
    \+sub_atom(P, 0, 32, _, '<http://www.w3.org/2000/10/swap/'),
    \+pred(P),
    assertz(pred(P)),
    false.

% run
run :-
    version_info(Version),
    format("% ~w~n", [Version]),
    bb_put(limit, -1),
    bb_put(fm, 0),
    relabel_graffiti,
    catch(forward(0), Exc,
        (   writeq(Exc),
            write('.'),
            nl,
            (   Exc = inference_fuse(_,_)
            ->  halt(2)
            ;   halt(1)
            )
        )
    ),
    bb_get(fm, Cnt),
    (   Cnt = 0
    ->  true
    ;   format(user_error, '*** fm=~w~n', [Cnt]),
        flush_output(user_error)
    ),
    halt(0).

% relabel graffiti
relabel_graffiti :-
    member(P, ['<http://www.w3.org/2000/10/swap/log#onNegativeSurface>', '<http://www.w3.org/2000/10/swap/log#onNeutralSurface>', '<http://www.w3.org/2000/10/swap/log#onPositiveSurface>', '<http://www.w3.org/2000/10/swap/log#onQuerySurface>']),
    A =.. [P, _, _],
    retract(A),
    tr_tr(A, B),
    assertz(B),
    false.
relabel_graffiti.

tr_tr([], []) :-
    !.
tr_tr([A|B], [C|D]) :-
    !,
    tr_tr(A, C),
    tr_tr(B, D).
tr_tr(A, A) :-
    number(A),
    !.
tr_tr(A, B) :-
    A =.. [C|D],
    tr_tr(D, E),
    (   memberchk(C, ['<http://www.w3.org/2000/10/swap/log#onNegativeSurface>', '<http://www.w3.org/2000/10/swap/log#onNeutralSurface>', '<http://www.w3.org/2000/10/swap/log#onPositiveSurface>', '<http://www.w3.org/2000/10/swap/log#onQuerySurface>']),
        E = [[_|_]|_]
    ->  tr_graffiti(A, B)
    ;   B =.. [C|E]
    ).

tr_graffiti(A, B) :-
    A =.. [C, D, E],
    tr_tr(D, F),
    tr_tr(E, R),
    findall([G, H],
        (   member(G, F),
            genlabel(G, H)
        ),
        L
    ),
    couple(_, M, L),
    makevar(R, O, L),
    B =.. [C, M, O].

% forward chaining
forward(Recursion) :-
    (   implies(Prem, Conc),
        Prem,
        (   Conc = ':-'(C, P)
        ->  \+clause(C, P)
        ;   \+Conc
        ),
        (   Conc \= implies(_, _),
            Conc \= ':-'(_, _)
        ->  labelvars(Conc)
        ;   true
        ),
        astep(Conc),
        retract(brake),
        false
    ;   brake,
        (   R is Recursion+1,
            (   \+recursion(R)
            ->  assertz(recursion(R))
            ;   true
            ),
            bb_get(limit, Limit),
            Recursion < Limit,
            forward(R)
        ;   true
        ),
        !
    ;   assertz(brake),
        forward(Recursion)
    ).

% create witnesses
labelvars(Term) :-
    (   retract(label(Current))
    ->  true
    ;   Current = 0
    ),
    numbervars(Term, Current, Next),
    assertz(label(Next)).

% assert step
astep((A, B)) :-
    !,
    astep(A),
    astep(B).
astep(A) :-
    (   (   A = ':-'(C, P)
        ->  \+clause(C, P)
        ;   \+A
        )
    ->  assertz(A),
        (   A = answer(Answer)
        ->  (   Answer = exopred(Q, S, O)
            ->  Q \= implies,
                T =.. [Q, S, O]
            ;   T = Answer
            ),
            writeq(T),
            write('.'),
            nl
        ;   true
        )
    ;   true
    ).

% check recursion
within_recursion(R) :-
    (   var(R)
    ->  R = 1
    ;   true
    ),
    (   R = 0
    ->  brake
    ;   bb_get(limit, L),
        (   L < R
        ->  bb_put(limit, R)
        ;   true
        ),
        recursion(R)
    ).

% assert positive surface
implies('<http://www.w3.org/2000/10/swap/log#onPositiveSurface>'(_, G), G).

% blow inference fuse
implies(('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, G),
        makevars(G, H, V),
        catch(call(H), _, false),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(_, H)
        ), throw(inference_fuse('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, G), H))).

% resolve positive surface
implies(('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, G),
        conj_list(G, L),
        select('<http://www.w3.org/2000/10/swap/log#onPositiveSurface>'([], H), L, K),
        conj_list(H, D),
        append(K, D, E),
        conj_list(F, E)
        ), '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, F)).

% erase at even level
implies(('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, G),
        conj_list(G, L),
        select('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], H), L, K),
        conj_list(H, M),
        select('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(W, O), M, N),
        (   conj_list(O, D),
            append(K, D, E),
            conj_list(C, E)
        ;   length(K, I),
            I > 1,
            conj_list(F, N),
            conj_list(C, ['<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'([], F)|K])
        ),
        append(V, W, U)
        ), '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(U, C)).

% resolve negative surfaces
implies(('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, G),
        conj_list(G, L),
        \+member('<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(_, _), L),
        findall(1,
            (   member('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(_, _), L)
            ),
            O
        ),
        length(O, E),
        memberchk(E, [0, 2, 3]),
        '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(W, F),
        conj_list(F, K),
        \+member('<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(_, _), L),
        length(K, 2),
        \+ (member('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(_, I), K), atomic(I)),
        makevars(K, J, W),
        select('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(U, C), J, [P]),
        (   select('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(_, Q), L, A),
            M = ['<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(U, C)|A],
            conj_list(Q, R),
            memberchk(P, R)
        ;   select(Q, L, A),
            M = [P|A],
            conj_list(C, R),
            memberchk(Q, R)
        ),
        list_to_set(M, T),
        conj_list(H, T),
        ground('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, H))
        ), '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, H)).

% adjust graffiti
implies(('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, G),
        findvars(G, U),
        findall(M,
            (   member(M, V),
                memberchk(M, U)
            ),
            W
        ),
        W \= V
        ), '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(W, G)).

% create forward rule
implies(('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, G),
        conj_list(G, L),
        select('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(_, H), L, K),
        conj_list(R, K),
        domain(V, R, P),
        find_graffiti(K, D),
        append(V, D, U),
        makevars([P, H], [Q, S], U),
        findvars(S, W),
        makevars(S, I, W)
        ), implies(Q, I)).

% create contrapositive
implies(('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, G),
        conj_list(G, L),
        \+member('<http://www.w3.org/2000/10/swap/log#onPositiveSurface>'(_, _), L),
        \+member('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(_, _), L),
        \+member('<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(_, _), L),
        select(R, L, J),
        conj_list(T, J),
        findvars(R, N),
        findall(A,
            (   member(A, V),
                \+member(A, N)
            ),
            B
        ),
        E = '<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(B, T),
        domain(V, R, P),
        find_graffiti([R], D),
        append(V, D, U),
        makevars([P, E], [Q, S], U),
        findvars(S, W),
        makevars(S, I, W)
        ), implies(Q, I)).

% create backward rule
implies(('<http://www.w3.org/2000/10/swap/log#onNegativeSurface>'(V, G),
        conj_list(G, L),
        select('<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(_, H), L, K),
        conj_list(H, [T]),
        conj_list(R, K),
        conjify(R, S),
        find_graffiti([R], D),
        append(V, D, U),
        makevars(':-'(T, S), C, U)
        ), C).

% create query
implies(('<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(V, G),
        conj_list(G, L),
        (   select('<http://www.w3.org/2000/10/swap/log#onQuerySurface>'(_, H), L, K)
        ->  conj_list(P, K),
            find_graffiti(K, D)
        ;   P = G,
            H = G,
            find_graffiti(L, D)
        ),
        append(V, D, U),
        makevars([P, H], [Q, S], U),
        findvars(S, W),
        makevars(S, I, W)
        ), implies(Q, answer(I))).

%
% built-ins
%

% graph
'<http://www.w3.org/2000/10/swap/graph#list>'(A, B) :-
    conj_list(A, B).

% list
'<http://www.w3.org/2000/10/swap/list#append>'(A, B) :-
    nonvar(A),
    append(A, B).

'<http://www.w3.org/2000/10/swap/list#first>'(A, B) :-
    nonvar(A),
    A = [B|_].

'<http://www.w3.org/2000/10/swap/list#firstRest>'([A|B], [A, B]).

'<http://www.w3.org/2000/10/swap/list#in>'(A, B) :-
    nonvar(B),
    member(A, B).

'<http://www.w3.org/2000/10/swap/list#iterate>'(A, [B, C]) :-
    nonvar(A),
    nth0(B, A, C).

'<http://www.w3.org/2000/10/swap/list#last>'(A, B) :-
    nonvar(A),
    append(_, [B], A).

'<http://www.w3.org/2000/10/swap/list#length>'(A, B) :-
    nonvar(A),
    length(A, B).

'<http://www.w3.org/2000/10/swap/list#map>'([A, B], C) :-
    nonvar(A),
    nonvar(B),
    findall(E,
        (   member(F, A),
            G =.. [B, F, E],
            G
        ),
        C
    ).

'<http://www.w3.org/2000/10/swap/list#member>'(A, B) :-
    nonvar(A),
    member(B, A).

'<http://www.w3.org/2000/10/swap/list#memberAt>'([A, B], C) :-
    nonvar(A),
    nth0(B, A, C).

'<http://www.w3.org/2000/10/swap/list#remove>'([A, B], C) :-
    nonvar(A),
    nonvar(B),
    findall(I,
        (   member(I, A),
            I \= B
        ),
        C
    ).

'<http://www.w3.org/2000/10/swap/list#removeAt>'([A, B], C) :-
    nonvar(A),
    nth0(B, A, D),
    findall(I,
        (   member(I, A),
            I \= D
        ),
        C
    ).

'<http://www.w3.org/2000/10/swap/list#removeDuplicates>'(A, B) :-
    nonvar(A),
    list_to_set(A, B).

'<http://www.w3.org/2000/10/swap/list#rest>'(A, B) :-
    nonvar(A),
    A = [_|B].

'<http://www.w3.org/2000/10/swap/list#sort>'(A, B) :-
    nonvar(A),
    sort(A, B).

%log
'<http://www.w3.org/2000/10/swap/log#bound>'(X, Y) :-
    (   nonvar(X)
    ->  Y = true
    ;   Y = false
    ).

'<http://www.w3.org/2000/10/swap/log#call>'(A, B) :-
    call(A),
    catch(call(B), _, false).

'<http://www.w3.org/2000/10/swap/log#callWithCleanup>'(A, B) :-
    call_cleanup(A, B).

'<http://www.w3.org/2000/10/swap/log#callWithOptional>'(A, B) :-
    call(A),
    (   \+catch(call(B), _, false)
    ->  true
    ;   catch(call(B), _, false)
    ).

'<http://www.w3.org/2000/10/swap/log#collectAllIn>'([A, B, C], D) :-
    within_recursion(D),
    nonvar(B),
    catch(findall(A, B, E), _, E = []),
    E = C.

'<http://www.w3.org/2000/10/swap/log#equalTo>'(X, Y) :-
    X = Y.

'<http://www.w3.org/2000/10/swap/log#forAllIn>'([A, B], C) :-
    within_recursion(C),
    nonvar(A),
    nonvar(B),
    forall(A, B).

'<http://www.w3.org/2000/10/swap/log#graffiti>'(A, B) :-
    nonvar(A),
    term_variables(A, B).

'<http://www.w3.org/2000/10/swap/log#ifThenElseIn>'([A, B, C], D) :-
    within_recursion(D),
    nonvar(A),
    nonvar(B),
    nonvar(C),
    if_then_else(A, B, C).

'<http://www.w3.org/2000/10/swap/log#notEqualTo>'(X, Y) :-
    X \= Y.

'<http://www.w3.org/2000/10/swap/log#repeat>'(A, B) :-
    nonvar(A),
    C is A-1,
    between(0, C, B).

'<http://www.w3.org/2000/10/swap/log#uri>'(X, Y) :-
    (   nonvar(X),
        atom_concat('<', U, X),
        atom_concat(V, '>', U),
        atom_chars(V, Y),
        !
    ;   nonvar(Y),
        atom_chars(U, Y),
        atom_concat('<', U, V),
        atom_concat(V, '>', X)
    ).

% math
'<http://www.w3.org/2000/10/swap/math#absoluteValue>'(X, Y) :-
    nonvar(X),
    Y is abs(X).

'<http://www.w3.org/2000/10/swap/math#acos>'(X, Y) :-
    (   nonvar(X),
        Y is acos(X),
        !
    ;   nonvar(Y),
        X is cos(Y)
    ).

'<http://www.w3.org/2000/10/swap/math#asin>'(X, Y) :-
    (   nonvar(X),
        Y is asin(X),
        !
    ;   nonvar(Y),
        X is sin(Y)
    ).

'<http://www.w3.org/2000/10/swap/math#atan>'(X, Y) :-
    (   nonvar(X),
        Y is atan(X),
        !
    ;   nonvar(Y),
        X is tan(Y)
    ).

'<http://www.w3.org/2000/10/swap/math#atan2>'([X, Y], Z) :-
    nonvar(X),
    nonvar(Y),
    Z is atan(X/Y).

'<http://www.w3.org/2000/10/swap/math#ceiling>'(X, Y) :-
    nonvar(X),
    Y is ceiling(X).

'<http://www.w3.org/2000/10/swap/math#cos>'(X, Y) :-
    (   nonvar(X),
        Y is cos(X),
        !
    ;   nonvar(Y),
        X is acos(Y)
    ).

'<http://www.w3.org/2000/10/swap/math#degrees>'(X, Y) :-
    (   nonvar(X),
        Y is X*180/pi,
        !
    ;   nonvar(Y),
        X is Y*pi/180
    ).

'<http://www.w3.org/2000/10/swap/math#difference>'([X, Y], Z) :-
    (   nonvar(X),
        nonvar(Y),
        Z is X-Y,
        !
    ;   nonvar(X),
        nonvar(Z),
        Y is X-Z,
        !
    ;   nonvar(Y),
        nonvar(Z),
        X is Y+Z
    ).

'<http://www.w3.org/2000/10/swap/math#equalTo>'(X, Y) :-
    nonvar(X),
    nonvar(Y),
    X =:= Y.

'<http://www.w3.org/2000/10/swap/math#exponentiation>'([X, Y], Z) :-
    (   nonvar(X),
        nonvar(Y),
        Z is X**Y,
        !
    ;   nonvar(X),
        nonvar(Z),
        Z =\= 0,
        X =\= 0,
        Y is log(Z)/log(X)
    ).

'<http://www.w3.org/2000/10/swap/math#floor>'(X, Y) :-
    nonvar(X),
    Y is floor(X).

'<http://www.w3.org/2000/10/swap/math#greaterThan>'(X, Y) :-
    nonvar(X),
    nonvar(Y),
     X > Y.

'<http://www.w3.org/2000/10/swap/math#integerQuotient>'([X, Y], Z) :-
    nonvar(X),
    nonvar(Y),
    (   Y =\= 0
    ->  Z is round(floor(X/Y))
    ;   throw(zero_division('<http://www.w3.org/2000/10/swap/math#integerQuotient>'([X, Y], Z)))
    ).

'<http://www.w3.org/2000/10/swap/math#lessThan>'(X, Y) :-
    nonvar(X),
    nonvar(Y),
    X < Y.

'<http://www.w3.org/2000/10/swap/math#logarithm>'([X, Y], Z) :-
    (   nonvar(X),
        nonvar(Y),
        X =\= 0,
        Y =\= 0,
        Z is log(X)/log(Y),
        !
    ;   nonvar(X),
        nonvar(Z),
        Y is X**(1/Z)
    ).

'<http://www.w3.org/2000/10/swap/math#max>'(X, Y) :-
    ground(X),
    list_max(X, Y).

'<http://www.w3.org/2000/10/swap/math#memberCount>'(X, Y) :-
    nonvar(X),
    length(X, Y).

'<http://www.w3.org/2000/10/swap/math#min>'(X, Y) :-
    ground(X),
    list_min(X, Y).

'<http://www.w3.org/2000/10/swap/math#negation>'(X, Y) :-
    (   nonvar(X)
    ->  Y is -X
    ;   (   nonvar(Y)
        ->  X is -Y
        )
    ).

'<http://www.w3.org/2000/10/swap/math#notEqualTo>'(X, Y) :-
    nonvar(X),
    nonvar(Y),
    X =\= Y.

'<http://www.w3.org/2000/10/swap/math#notGreaterThan>'(X, Y) :-
    nonvar(X),
    nonvar(Y),
    X =< Y.

'<http://www.w3.org/2000/10/swap/math#notLessThan>'(X, Y) :-
    nonvar(X),
    nonvar(Y),
    X >= Y.

'<http://www.w3.org/2000/10/swap/math#product>'(X, Y) :-
    ground(X),
    product(X, Y).

'<http://www.w3.org/2000/10/swap/math#quotient>'([X, Y], Z) :-
    (   nonvar(X),
        nonvar(Y),
        (   Y =\= 0
        ->  Z is X/Y
        ;   throw(zero_division('<http://www.w3.org/2000/10/swap/math#quotient>'([X, Y], Z)))
        ),
        !
    ;   nonvar(X),
        nonvar(Z),
        (   Z =\= 0
        ->  Y is X/Z
        ;   throw(zero_division('<http://www.w3.org/2000/10/swap/math#quotient>'([X, Y], Z)))
        ),
        !
    ;   nonvar(Y),
        nonvar(Z),
        X is Y*Z
    ).

'<http://www.w3.org/2000/10/swap/math#radians>'(X, Y) :-
    (   nonvar(X),
        Y is X*pi/180,
        !
    ;   nonvar(Y),
        X is Y*180/pi
    ).

'<http://www.w3.org/2000/10/swap/math#remainder>'([X, Y], Z) :-
    nonvar(X),
    nonvar(Y),
    (   Y =\= 0
    ->  Z is X-Y*round(floor(X/Y))
    ;   throw(zero_division('<http://www.w3.org/2000/10/swap/math#remainder>'([X, Y], Z)))
    ).

'<http://www.w3.org/2000/10/swap/math#rounded>'(X, Y) :-
    nonvar(X),
    Y is round(round(X)).

'<http://www.w3.org/2000/10/swap/math#roundedTo>'([X, Y], Z) :-
    nonvar(X),
    nonvar(Y),
    F is 10**floor(Y),
    Z is round(round(X*F))/F.

'<http://www.w3.org/2000/10/swap/math#sin>'(X, Y) :-
    (   nonvar(X),
        Y is sin(X),
        !
    ;   nonvar(Y),
        X is asin(Y)
    ).

'<http://www.w3.org/2000/10/swap/math#sum>'(X, Y) :-
    ground(X),
    sum(X, Y).

'<http://www.w3.org/2000/10/swap/math#tan>'(X, Y) :-
    (   nonvar(X),
        Y is tan(X),
        !
    ;   nonvar(Y),
        X is atan(Y)
    ).

%
% support
%
conj_list(true, []) :-
    !.
conj_list(A, [A]) :-
    A \= (_, _),
    A \= false,
    !.
conj_list((A, B), [A|C]) :-
    conj_list(B, C).

exopred(P, S, O) :-
    (   var(P)
    ->  pred(P)
    ;   true
    ),
    call(P, S, O).

conjify((A, B), (C, D)) :-
    !,
    conjify(A, C),
    conjify(B, D).
conjify('<http://www.w3.org/2000/10/swap/log#callWithCut>'(A, _), (A, !)) :-
    !.
conjify(A, A).

domain(A, true, B) :-
    !,
    findall('<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'(C, _),
        (   member(C, A)
        ),
        D
    ),
    conj_list(B, D).
domain(_, B, B).

makevars(A, B, C) :-
    list_to_set(C, D),
    findvars(D, G),
    (   D \= G
    ->  throw(invalid_graffiti(D, in(A)))
    ;   true
    ),
    findall([X, _],
        (   member(X, D)
        ),
        F
    ),
    makevar(A, B, F).

makevar(A, B, D) :-
    atomic(A),
    !,
    (   atom(A),
        member([A, B], D)
    ->  true
    ;   B = A
    ).
makevar(A, A, _) :-
    var(A),
    !.
makevar([], [], _) :-
    !.
makevar([A|B], [C|D], F) :-
    makevar(A, C, F),
    makevar(B, D, F),
    !.
makevar(A, B, F) :-
    A =.. [Ch|Ct],
    (   sub_atom(Ch, 0, 2, _, '_:')
    ->  C = [exopred, Ch|Ct]
    ;   C = [Ch|Ct]
    ),
    makevar(C, [Dh|Dt], F),
    nonvar(Dh),
    B =.. [Dh|Dt].

findvars(A, B) :-
    atomic(A),
    !,
    (   atom(A),
        sub_atom(A, 0, 2, _, '_:')
    ->  B = [A]
    ;   B = []
    ).
findvars(A, []) :-
    var(A),
    !.
findvars([], []) :-
    !.
findvars([A|B], C) :-
    findvars(A, D),
    findvars(B, E),
    append(D, E, C),
    !.
findvars(A, B) :-
    A =.. C,
    findvars(C, B).

find_graffiti(A, []) :-
    atomic(A),
    !.
find_graffiti([], []) :-
    !.
find_graffiti([A|B], C) :-
    !,
    find_graffiti(A, D),
    find_graffiti(B, E),
    append(D, E, C).
find_graffiti(A, B) :-
    A =.. [C, D, E],
    memberchk(C, ['<http://www.w3.org/2000/10/swap/log#onNegativeSurface>', '<http://www.w3.org/2000/10/swap/log#onNeutralSurface>', '<http://www.w3.org/2000/10/swap/log#onPositiveSurface>', '<http://www.w3.org/2000/10/swap/log#onQuerySurface>']),
    list_si(D),
    !,
    find_graffiti(E, F),
    append(D, F, B).
find_graffiti(A, B) :-
    A =.. C,
    find_graffiti(C, B).

sum([], 0) :-
    !.
sum([A|B], C) :-
    sum(B, D),
    C is A+D.

product([], 1) :-
    !.
product([A|B], C) :-
    product(B, D),
    C is A*D.

includes(_, []) :-
    !.
includes(X, [Y|Z]) :-
    member(Y, X),
    includes(X, Z).

couple([], [], []).
couple([A|B], [C|D], [[A, C]|E]) :-
    couple(B, D, E).

genlabel(A, B) :-
    (   bb_get(A, C)
    ->  D is C+1,
        bb_put(A, D),
        taglabel(A, D, B)
    ;   bb_put(A, 1),
        taglabel(A, 1, B)
    ).

taglabel(A, B, C) :-
    atom_chars(A, D),
    number_chars(B, E),
    append(D, ['_'|E], F),
    atom_chars(C, F).

fm(A) :-
    (   A = !
    ->  true
    ;   format(user_error, '*** ~q~n', [A]),
        flush_output(user_error)
    ),
    bb_get(fm, B),
    C is B+1,
    bb_put(fm, C).

mf(A) :-
    forall(
        catch(A, _, false),
        format(user_error, "*** ~q~n", [A])
    ),
    flush_output(user_error).
