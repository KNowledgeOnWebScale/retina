% Goal driven Parallel Sequences -- Jos De Roo
% See background paper https://arxiv.org/pdf/2010.12027.pdf

% find paths in the state space from initial state to goal state within limits
'http://josd.github.io/ns#findpath'(_SCOPE,[Goal,Path,Duration,Cost,Belief,Comfort,Limits]) <=
    'http://josd.github.io/ns#findpaths'([],[Goal,[],0.0,0.0,1.0,1.0,Path,Duration,Cost,Belief,Comfort,Limits]).

'http://josd.github.io/ns#findpaths'(_Maps,[Goal,Path,Duration,Cost,Belief,Comfort,Path,Duration,Cost,Belief,Comfort,_Limits]) <=
    'http://josd.github.io/ns#builtin'(call(Goal),[]),
    'http://josd.github.io/ns#builtin'(!,[]).
'http://josd.github.io/ns#findpaths'(Maps_s,[Goal,Path_s,Duration_s,Cost_s,Belief_s,Comfort_s,Path,Duration,Cost,Belief,Comfort,Limits]) <=
    'http://josd.github.io/ns#builtin'(Limits = [MaxDuration,MaxCost,MinBelief,MinComfort,MaxStagecount],[]),
    'http://josd.github.io/ns#builtin'(clause(
        'http://josd.github.io/ns#description'(Map,[From,Transition,To,Action,Duration_n,Cost_n,Belief_n,Comfort_n]),
        Where
    ),[]),
    'http://josd.github.io/ns#builtin'(call(From),[]),
    'http://josd.github.io/ns#builtin'(call(Where),[]),
    'http://josd.github.io/ns#description'(Map,[From,Transition,To,Action,Duration_n,Cost_n,Belief_n,Comfort_n]),
    'http://josd.github.io/ns#builtin'(append(Maps_s,[Map],Maps_t),[]),
    'http://josd.github.io/ns#stagecount'(Maps_t,Stagecount),
    'http://josd.github.io/ns#builtin'(Stagecount =< MaxStagecount,[]),
    'http://josd.github.io/ns#builtin'(Duration_t is Duration_s+Duration_n,[]),
    'http://josd.github.io/ns#builtin'(Duration_t =< MaxDuration,[]),
    'http://josd.github.io/ns#builtin'(Cost_t is Cost_s+Cost_n,[]),
    'http://josd.github.io/ns#builtin'(Cost_t =< MaxCost,[]),
    'http://josd.github.io/ns#builtin'(Belief_t is Belief_s*Belief_n,[]),
    'http://josd.github.io/ns#builtin'(Belief_t >= MinBelief,[]),
    'http://josd.github.io/ns#builtin'(Comfort_t is Comfort_s*Comfort_n,[]),
    'http://josd.github.io/ns#builtin'(Comfort_t >= MinComfort,[]),
    'http://josd.github.io/ns#builtin'(append(Path_s,[Action],Path_t),[]),
    'http://josd.github.io/ns#becomes'(From,To),
    'http://josd.github.io/ns#builtin'(call_cleanup(
        'http://josd.github.io/ns#findpaths'(Maps_t,[Goal,Path_t,Duration_t,Cost_t,Belief_t,Comfort_t,Path,Duration,Cost,Belief,Comfort,Limits]),
        'http://josd.github.io/ns#becomes'(To,From)
    ),[]).

% counting the number of stages (a stage is a sequence of steps in the same map)
'http://josd.github.io/ns#stagecount'([],1).
'http://josd.github.io/ns#stagecount'([C,E|_],B) <=
    'http://josd.github.io/ns#builtin'(C \= E,[]),
    'http://josd.github.io/ns#builtin'(!,[]),
    'http://josd.github.io/ns#stagecount'(_,G),
    'http://josd.github.io/ns#builtin'(B is G+1,[]).
'http://josd.github.io/ns#stagecount'([_|D],B) <=
    'http://josd.github.io/ns#stagecount'(D,B).

% linear implication
'http://josd.github.io/ns#becomes'(A,B) <=
    'http://josd.github.io/ns#builtin'(catch(A,_,fail),[]),
    'http://josd.github.io/ns#conj_list'(A,C),
    'http://josd.github.io/ns#builtin'(forall(
        'http://josd.github.io/ns#builtin'(member(D,C),[]),
        'http://josd.github.io/ns#builtin'(retract(D),[])
    ),[]),
    'http://josd.github.io/ns#conj_list'(B,E),
    'http://josd.github.io/ns#builtin'(forall(
        'http://josd.github.io/ns#builtin'(member(F,E),[]),
        'http://josd.github.io/ns#builtin'(assertz(F),[])
    ),[]).

'http://josd.github.io/ns#conj_list'(true,[]).
'http://josd.github.io/ns#conj_list'(A,[A]) <=
    'http://josd.github.io/ns#builtin'(A \= (_,_),[]),
    'http://josd.github.io/ns#builtin'(A \= false,[]),
    'http://josd.github.io/ns#builtin'(!,[]).
'http://josd.github.io/ns#conj_list'((A,B),[A|C]) <=
    'http://josd.github.io/ns#conj_list'(B,C).

% test data
'http://josd.github.io/ns#builtin'(dynamic('http://josd.github.io/ns#description'/2),[]).
'http://josd.github.io/ns#builtin'(dynamic('http://josd.github.io/ns#location'/2),[]).

% partial map of Belgium
'http://josd.github.io/ns#description'(
    'http://example.org/ns#map_be',
    [   'http://josd.github.io/ns#location'(S,'http://example.org/ns#gent'),
        true,
        'http://josd.github.io/ns#location'(S,'http://example.org/ns#brugge'),
        'http://example.org/ns#drive_gent_brugge',
        1500.0,
        0.006,
        0.96,
        0.99
    ]
).
'http://josd.github.io/ns#description'(
    'http://example.org/ns#map_be',
    [   'http://josd.github.io/ns#location'(S,'http://example.org/ns#gent'),
        true,
        'http://josd.github.io/ns#location'(S,'http://example.org/ns#kortrijk'),
        'http://example.org/ns#drive_gent_kortrijk',
        1600.0,
        0.007,
        0.96,
        0.99
    ]
).
'http://josd.github.io/ns#description'(
    'http://example.org/ns#map_be',
    [   'http://josd.github.io/ns#location'(S,'http://example.org/ns#kortrijk'),
        true,
        'http://josd.github.io/ns#location'(S,'http://example.org/ns#brugge'),
        'http://example.org/ns#drive_kortrijk_brugge',
        1600.0,
        0.007,
        0.96,
        0.99
    ]
).
'http://josd.github.io/ns#description'(
    'http://example.org/ns#map_be',
    [   'http://josd.github.io/ns#location'(S,'http://example.org/ns#brugge'),
        true,
        'http://josd.github.io/ns#location'(S,'http://example.org/ns#oostende'),
        'http://example.org/ns#drive_brugge_oostende',
        900.0,
        0.004,
        0.98,
        1.0
    ]
).

% current state
'http://josd.github.io/ns#location'('http://example.org/ns#i1','http://example.org/ns#gent').

% query
'http://josd.github.io/ns#findpath'(
    'http://example.org/ns#map_be',
    [   'http://josd.github.io/ns#location'(_SUBJECT,'http://example.org/ns#oostende'),
        _PATH,
        _DURATION,
        _COST,
        _BELIEF,
        _COMFORT,
        [5000.0,5.0,0.2,0.4,1]
    ]
) => true.
