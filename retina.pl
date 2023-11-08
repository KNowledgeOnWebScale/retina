% --------------------
% retina -- Jos De Roo
% --------------------
%
% See https://knowledgeonwebscale.github.io/retina/
%

:- op(1150,xfx,=>).
:- op(1175,xfx,<=).

term_expansion((Head <= Body),(Head :- Body)).
term_expansion(('https://knowledgeonwebscale.github.io/ns#builtin'(Term,[])),(:- Term)).

goal_expansion('https://knowledgeonwebscale.github.io/ns#builtin'(Goal,[]),Goal).

'https://knowledgeonwebscale.github.io/ns#builtin'(use_module(library(lists)),[]).
'https://knowledgeonwebscale.github.io/ns#builtin'(use_module(library(terms)),[]).
'https://knowledgeonwebscale.github.io/ns#builtin'(use_module(library(iso_ext)),[]).

'https://knowledgeonwebscale.github.io/ns#builtin'(dynamic((=>)/2),[]).
'https://knowledgeonwebscale.github.io/ns#builtin'(dynamic((<=)/2),[]).
'https://knowledgeonwebscale.github.io/ns#builtin'(dynamic('https://knowledgeonwebscale.github.io/ns#brake'/2),[]).
'https://knowledgeonwebscale.github.io/ns#builtin'(dynamic('https://knowledgeonwebscale.github.io/ns#label'/2),[]).
'https://knowledgeonwebscale.github.io/ns#builtin'(dynamic('https://knowledgeonwebscale.github.io/ns#pred'/2),[]).
'https://knowledgeonwebscale.github.io/ns#builtin'(dynamic('https://knowledgeonwebscale.github.io/ns#answer'/2),[]).
'https://knowledgeonwebscale.github.io/ns#builtin'(dynamic('https://knowledgeonwebscale.github.io/ns#lemma'/2),[]).

version_info('retina v0.2.1 (2023-11-08)').

run :-
    'https://knowledgeonwebscale.github.io/ns#main'([],[]).

%
% retina abstract machine
%
% 1/ select rule P => C
% 2/ prove P and if it fails backtrack to 1/
% 3/ if C = true answer with P => true, else if ~C assert C and retract brake
% 4/ backtrack to 2/ and if it fails backtrack to 1/
% 5/ if 1/ fails and if brake halt, else assert brake and start again at 1/
%
'https://knowledgeonwebscale.github.io/ns#main'([],[]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(call((Prem => Conc)),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(call(Prem),[]),
    'https://knowledgeonwebscale.github.io/ns#process'(Prem,Conc),
    'https://knowledgeonwebscale.github.io/ns#builtin'(fail,[]).
'https://knowledgeonwebscale.github.io/ns#main'(_,[]) <=
    'https://knowledgeonwebscale.github.io/ns#brake'([],[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(halt,[]).
'https://knowledgeonwebscale.github.io/ns#main'([],[]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(asserta('https://knowledgeonwebscale.github.io/ns#brake'([],[])),[]),
    'https://knowledgeonwebscale.github.io/ns#main'([],[]).

'https://knowledgeonwebscale.github.io/ns#process'(Prem,true) <=
    'https://knowledgeonwebscale.github.io/ns#labelvars'(Prem,[]),
    'https://knowledgeonwebscale.github.io/ns#add_answer'(Prem,[]).
'https://knowledgeonwebscale.github.io/ns#process'(Prem,Conc) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(\+Conc,[]),
    'https://knowledgeonwebscale.github.io/ns#labelvars'(Conc,[]),
    'https://knowledgeonwebscale.github.io/ns#astep'(Prem,Conc),
    'https://knowledgeonwebscale.github.io/ns#add_lemma'(Prem,Conc),
    'https://knowledgeonwebscale.github.io/ns#builtin'(retract('https://knowledgeonwebscale.github.io/ns#brake'([],[])),[]).

'https://knowledgeonwebscale.github.io/ns#add_answer'(Prem,[]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(\+'https://knowledgeonwebscale.github.io/ns#answer'((Prem => true),[]),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(assertz('https://knowledgeonwebscale.github.io/ns#answer'((Prem => true),[])),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(writeq(Prem),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(write(' => true.\n'),[]).
'https://knowledgeonwebscale.github.io/ns#add_answer'(_,[]).

'https://knowledgeonwebscale.github.io/ns#add_lemma'(Prem,Conc) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(\+'https://knowledgeonwebscale.github.io/ns#lemma'(Prem,Conc),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(assertz('https://knowledgeonwebscale.github.io/ns#lemma'(Prem,Conc)),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(writeq('https://knowledgeonwebscale.github.io/ns#lemma'(Prem,Conc)),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(write('.\n'),[]).
'https://knowledgeonwebscale.github.io/ns#add_lemma'(_,_).

% create witnesses
'https://knowledgeonwebscale.github.io/ns#labelvars'(Term,[]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(retract('https://knowledgeonwebscale.github.io/ns#label'(Current,[])),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(!,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(numbervars(Term,Current,Next),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(assertz('https://knowledgeonwebscale.github.io/ns#label'(Next,[])),[]).
'https://knowledgeonwebscale.github.io/ns#labelvars'(Term,[]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(numbervars(Term,0,Next),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(assertz('https://knowledgeonwebscale.github.io/ns#label'(Next,[])),[]).

% assert new step
'https://knowledgeonwebscale.github.io/ns#astep'(A,(B,C)) <=
    'https://knowledgeonwebscale.github.io/ns#astep'(A,B),
    'https://knowledgeonwebscale.github.io/ns#astep'(A,C).
'https://knowledgeonwebscale.github.io/ns#astep'(A,false) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(writeq(A),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(write(' => false.\n'),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(halt,[]).
'https://knowledgeonwebscale.github.io/ns#astep'(_,A) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(\+A,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(asserta(A),[]),
    'https://knowledgeonwebscale.github.io/ns#apred'(A,[]).
'https://knowledgeonwebscale.github.io/ns#astep'(_,_).

'https://knowledgeonwebscale.github.io/ns#apred'(A,[]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(functor(A,B,2),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(\+'https://knowledgeonwebscale.github.io/ns#pred'(B,[]),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(assertz('https://knowledgeonwebscale.github.io/ns#pred'(B,[])),[]).
'https://knowledgeonwebscale.github.io/ns#apred'(_,[]).
