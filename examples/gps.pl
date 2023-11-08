% Goal driven Parallel Sequences -- Jos De Roo
% See background paper https://arxiv.org/pdf/2010.12027.pdf

% find paths in the state space from initial state to goal state within limits
'https://knowledgeonwebscale.github.io/ns#findpath'(_SCOPE,[Goal,Path,Duration,Cost,Belief,Comfort,Limits]) <=
    'https://knowledgeonwebscale.github.io/ns#findpaths'([],[Goal,[],0.0,0.0,1.0,1.0,Path,Duration,Cost,Belief,Comfort,Limits]).

'https://knowledgeonwebscale.github.io/ns#findpaths'(_Maps,[Goal,Path,Duration,Cost,Belief,Comfort,Path,Duration,Cost,Belief,Comfort,_Limits]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(call(Goal),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(!,[]).
'https://knowledgeonwebscale.github.io/ns#findpaths'(Maps_s,[Goal,Path_s,Duration_s,Cost_s,Belief_s,Comfort_s,Path,Duration,Cost,Belief,Comfort,Limits]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(Limits = [MaxDuration,MaxCost,MinBelief,MinComfort,MaxStagecount],[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(clause(
        'https://knowledgeonwebscale.github.io/ns#description'(Map,[From,Transition,To,Action,Duration_n,Cost_n,Belief_n,Comfort_n]),
        Where
    ),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(call(From),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(call(Where),[]),
    'https://knowledgeonwebscale.github.io/ns#description'(Map,[From,Transition,To,Action,Duration_n,Cost_n,Belief_n,Comfort_n]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(append(Maps_s,[Map],Maps_t),[]),
    'https://knowledgeonwebscale.github.io/ns#stagecount'(Maps_t,Stagecount),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Stagecount =< MaxStagecount,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Duration_t is Duration_s+Duration_n,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Duration_t =< MaxDuration,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Cost_t is Cost_s+Cost_n,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Cost_t =< MaxCost,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Belief_t is Belief_s*Belief_n,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Belief_t >= MinBelief,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Comfort_t is Comfort_s*Comfort_n,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(Comfort_t >= MinComfort,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(append(Path_s,[Action],Path_t),[]),
    'https://knowledgeonwebscale.github.io/ns#becomes'(From,To),
    'https://knowledgeonwebscale.github.io/ns#builtin'(call_cleanup(
        'https://knowledgeonwebscale.github.io/ns#findpaths'(Maps_t,[Goal,Path_t,Duration_t,Cost_t,Belief_t,Comfort_t,Path,Duration,Cost,Belief,Comfort,Limits]),
        'https://knowledgeonwebscale.github.io/ns#becomes'(To,From)
    ),[]).

% counting the number of stages (a stage is a sequence of steps in the same map)
'https://knowledgeonwebscale.github.io/ns#stagecount'([],1).
'https://knowledgeonwebscale.github.io/ns#stagecount'([C,E|_],B) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(C \= E,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(!,[]),
    'https://knowledgeonwebscale.github.io/ns#stagecount'(_,G),
    'https://knowledgeonwebscale.github.io/ns#builtin'(B is G+1,[]).
'https://knowledgeonwebscale.github.io/ns#stagecount'([_|D],B) <=
    'https://knowledgeonwebscale.github.io/ns#stagecount'(D,B).

% linear implication
'https://knowledgeonwebscale.github.io/ns#becomes'(A,B) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(catch(A,_,fail),[]),
    'https://knowledgeonwebscale.github.io/ns#conj_list'(A,C),
    'https://knowledgeonwebscale.github.io/ns#builtin'(forall(
        'https://knowledgeonwebscale.github.io/ns#builtin'(member(D,C),[]),
        'https://knowledgeonwebscale.github.io/ns#builtin'(retract(D),[])
    ),[]),
    'https://knowledgeonwebscale.github.io/ns#conj_list'(B,E),
    'https://knowledgeonwebscale.github.io/ns#builtin'(forall(
        'https://knowledgeonwebscale.github.io/ns#builtin'(member(F,E),[]),
        'https://knowledgeonwebscale.github.io/ns#builtin'(assertz(F),[])
    ),[]).

'https://knowledgeonwebscale.github.io/ns#conj_list'(true,[]).
'https://knowledgeonwebscale.github.io/ns#conj_list'(A,[A]) <=
    'https://knowledgeonwebscale.github.io/ns#builtin'(A \= (_,_),[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(A \= false,[]),
    'https://knowledgeonwebscale.github.io/ns#builtin'(!,[]).
'https://knowledgeonwebscale.github.io/ns#conj_list'((A,B),[A|C]) <=
    'https://knowledgeonwebscale.github.io/ns#conj_list'(B,C).

% test data
'https://knowledgeonwebscale.github.io/ns#builtin'(dynamic('https://knowledgeonwebscale.github.io/ns#description'/2),[]).
'https://knowledgeonwebscale.github.io/ns#builtin'(dynamic('https://knowledgeonwebscale.github.io/ns#location'/2),[]).

% partial map of Belgium
'https://knowledgeonwebscale.github.io/ns#description'(
    'http://example.org/ns#map_be',
    [   'https://knowledgeonwebscale.github.io/ns#location'(S,'http://example.org/ns#gent'),
        true,
        'https://knowledgeonwebscale.github.io/ns#location'(S,'http://example.org/ns#brugge'),
        'http://example.org/ns#drive_gent_brugge',
        1500.0,
        0.006,
        0.96,
        0.99
    ]
).
'https://knowledgeonwebscale.github.io/ns#description'(
    'http://example.org/ns#map_be',
    [   'https://knowledgeonwebscale.github.io/ns#location'(S,'http://example.org/ns#gent'),
        true,
        'https://knowledgeonwebscale.github.io/ns#location'(S,'http://example.org/ns#kortrijk'),
        'http://example.org/ns#drive_gent_kortrijk',
        1600.0,
        0.007,
        0.96,
        0.99
    ]
).
'https://knowledgeonwebscale.github.io/ns#description'(
    'http://example.org/ns#map_be',
    [   'https://knowledgeonwebscale.github.io/ns#location'(S,'http://example.org/ns#kortrijk'),
        true,
        'https://knowledgeonwebscale.github.io/ns#location'(S,'http://example.org/ns#brugge'),
        'http://example.org/ns#drive_kortrijk_brugge',
        1600.0,
        0.007,
        0.96,
        0.99
    ]
).
'https://knowledgeonwebscale.github.io/ns#description'(
    'http://example.org/ns#map_be',
    [   'https://knowledgeonwebscale.github.io/ns#location'(S,'http://example.org/ns#brugge'),
        true,
        'https://knowledgeonwebscale.github.io/ns#location'(S,'http://example.org/ns#oostende'),
        'http://example.org/ns#drive_brugge_oostende',
        900.0,
        0.004,
        0.98,
        1.0
    ]
).

% current state
'https://knowledgeonwebscale.github.io/ns#location'('http://example.org/ns#i1','http://example.org/ns#gent').

% query
'https://knowledgeonwebscale.github.io/ns#findpath'(
    'http://example.org/ns#map_be',
    [   'https://knowledgeonwebscale.github.io/ns#location'(_SUBJECT,'http://example.org/ns#oostende'),
        _PATH,
        _DURATION,
        _COST,
        _BELIEF,
        _COMFORT,
        [5000.0,5.0,0.2,0.4,1]
    ]
) => true.
