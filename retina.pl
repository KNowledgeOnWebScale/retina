% --------------------
% retina -- Jos De Roo
% --------------------
%
% See https://josd.github.io/retina/
%

:- op(1150,xfx,=>).
:- op(1175,xfx,<=).

term_expansion((Head <= Body),(Head :- Body)).
term_expansion(('http://josd.github.io/ns#builtin'(Term,[])),(:- Term)).

goal_expansion('http://josd.github.io/ns#builtin'(Goal,[]),Goal).

'http://josd.github.io/ns#builtin'(use_module(library(lists)),[]).
'http://josd.github.io/ns#builtin'(use_module(library(terms)),[]).
'http://josd.github.io/ns#builtin'(use_module(library(iso_ext)),[]).

'http://josd.github.io/ns#builtin'(dynamic((=>)/2),[]).
'http://josd.github.io/ns#builtin'(dynamic((<=)/2),[]).
'http://josd.github.io/ns#builtin'(dynamic('http://josd.github.io/ns#brake'/2),[]).
'http://josd.github.io/ns#builtin'(dynamic('http://josd.github.io/ns#label'/2),[]).
'http://josd.github.io/ns#builtin'(dynamic('http://josd.github.io/ns#pred'/2),[]).
'http://josd.github.io/ns#builtin'(dynamic('http://josd.github.io/ns#answer'/2),[]).
'http://josd.github.io/ns#builtin'(dynamic('http://josd.github.io/ns#lemma'/2),[]).

version_info('retina v0.2.1 (2023-11-08)').

run :-
    'http://josd.github.io/ns#main'([],[]).

%
% retina abstract machine
%
% 1/ select rule P => C
% 2/ prove P and if it fails backtrack to 1/
% 3/ if C = true answer with P => true, else if ~C assert C and retract brake
% 4/ backtrack to 2/ and if it fails backtrack to 1/
% 5/ if 1/ fails and if brake halt, else assert brake and start again at 1/
%
'http://josd.github.io/ns#main'([],[]) <=
    'http://josd.github.io/ns#builtin'(call((Prem => Conc)),[]),
    'http://josd.github.io/ns#builtin'(call(Prem),[]),
    'http://josd.github.io/ns#process'(Prem,Conc),
    'http://josd.github.io/ns#builtin'(fail,[]).
'http://josd.github.io/ns#main'(_,[]) <=
    'http://josd.github.io/ns#brake'([],[]),
    'http://josd.github.io/ns#builtin'(halt,[]).
'http://josd.github.io/ns#main'([],[]) <=
    'http://josd.github.io/ns#builtin'(asserta('http://josd.github.io/ns#brake'([],[])),[]),
    'http://josd.github.io/ns#main'([],[]).

'http://josd.github.io/ns#process'(Prem,true) <=
    'http://josd.github.io/ns#labelvars'(Prem,[]),
    'http://josd.github.io/ns#add_answer'(Prem,[]).
'http://josd.github.io/ns#process'(Prem,Conc) <=
    'http://josd.github.io/ns#builtin'(\+Conc,[]),
    'http://josd.github.io/ns#labelvars'(Conc,[]),
    'http://josd.github.io/ns#astep'(Prem,Conc),
    'http://josd.github.io/ns#add_lemma'(Prem,Conc),
    'http://josd.github.io/ns#builtin'(retract('http://josd.github.io/ns#brake'([],[])),[]).

'http://josd.github.io/ns#add_answer'(Prem,[]) <=
    'http://josd.github.io/ns#builtin'(\+'http://josd.github.io/ns#answer'((Prem => true),[]),[]),
    'http://josd.github.io/ns#builtin'(assertz('http://josd.github.io/ns#answer'((Prem => true),[])),[]),
    'http://josd.github.io/ns#builtin'(writeq(Prem),[]),
    'http://josd.github.io/ns#builtin'(write(' => true.\n'),[]).
'http://josd.github.io/ns#add_answer'(_,[]).

'http://josd.github.io/ns#add_lemma'(Prem,Conc) <=
    'http://josd.github.io/ns#builtin'(\+'http://josd.github.io/ns#lemma'(Prem,Conc),[]),
    'http://josd.github.io/ns#builtin'(assertz('http://josd.github.io/ns#lemma'(Prem,Conc)),[]),
    'http://josd.github.io/ns#builtin'(writeq('http://josd.github.io/ns#lemma'(Prem,Conc)),[]),
    'http://josd.github.io/ns#builtin'(write('.\n'),[]).
'http://josd.github.io/ns#add_lemma'(_,_).

% create witnesses
'http://josd.github.io/ns#labelvars'(Term,[]) <=
    'http://josd.github.io/ns#builtin'(retract('http://josd.github.io/ns#label'(Current,[])),[]),
    'http://josd.github.io/ns#builtin'(!,[]),
    'http://josd.github.io/ns#builtin'(numbervars(Term,Current,Next),[]),
    'http://josd.github.io/ns#builtin'(assertz('http://josd.github.io/ns#label'(Next,[])),[]).
'http://josd.github.io/ns#labelvars'(Term,[]) <=
    'http://josd.github.io/ns#builtin'(numbervars(Term,0,Next),[]),
    'http://josd.github.io/ns#builtin'(assertz('http://josd.github.io/ns#label'(Next,[])),[]).

% assert new step
'http://josd.github.io/ns#astep'(A,(B,C)) <=
    'http://josd.github.io/ns#astep'(A,B),
    'http://josd.github.io/ns#astep'(A,C).
'http://josd.github.io/ns#astep'(A,false) <=
    'http://josd.github.io/ns#builtin'(writeq(A),[]),
    'http://josd.github.io/ns#builtin'(write(' => false.\n'),[]),
    'http://josd.github.io/ns#builtin'(halt,[]).
'http://josd.github.io/ns#astep'(_,A) <=
    'http://josd.github.io/ns#builtin'(\+A,[]),
    'http://josd.github.io/ns#builtin'(asserta(A),[]),
    'http://josd.github.io/ns#apred'(A,[]).
'http://josd.github.io/ns#astep'(_,_).

'http://josd.github.io/ns#apred'(A,[]) <=
    'http://josd.github.io/ns#builtin'(functor(A,B,2),[]),
    'http://josd.github.io/ns#builtin'(\+'http://josd.github.io/ns#pred'(B,[]),[]),
    'http://josd.github.io/ns#builtin'(assertz('http://josd.github.io/ns#pred'(B,[])),[]).
'http://josd.github.io/ns#apred'(_,[]).
