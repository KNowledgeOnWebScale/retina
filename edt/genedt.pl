% Generating extended deep taxonomy

:- use_module(library(format)).
:- use_module(library(between)).

run :-
    open('edt.pl',write,Out),
    format(Out,"% Extended deep taxonomy~n",[]),
    format(Out,"% See http://ruleml.org/WellnessRules/files/WellnessRulesN3-2009-11-10.pdf~n",[]),
    format(Out,"~n",[]),
    (   between(0,10000,I),
        format(Out,"'<http://example.org/ns#N0>'('<http://example.org/ns#i~d>').~n",[I]),
        fail
    ;   true
    ),
    format(Out,"~n",[]),
    (   between(0,9999,I),
        J is I+1,
        format(Out,"'<http://example.org/ns#N~d>'(X) :- '<http://example.org/ns#N~d>'(X).~n",[J,I]),
        format(Out,"'<http://example.org/ns#I~d>'(X) :- '<http://example.org/ns#N~d>'(X).~n",[J,I]),
        format(Out,"'<http://example.org/ns#J~d>'(X) :- '<http://example.org/ns#N~d>'(X).~n",[J,I]),
        fail
    ;   true
    ),
    format(Out,"~n",[]),
    format(Out,"% query~n",[]),
    format(Out,"query('<http://example.org/ns#N10000>'('<http://example.org/ns#i10000>')).~n",[]),
    format(Out,"~n",[]),
    format(Out,"run :-~n",[]),
    format(Out,"    query(Q),~n",[]),
    format(Out,"    Q,~n",[]),
    format(Out,"    writeq(Q),~n",[]),
    format(Out,"    write('.\\n'),~n",[]),
    format(Out,"    fail;~n",[]),
    format(Out,"    true.~n",[]),
    close(Out).
