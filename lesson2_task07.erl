-module(lesson2_task07).
-export([flattern/1]).
-import(io, [format/2]).

flattern(Arr) ->
    flattern(Arr, []).

flattern([[H|T1]|T2], [H2|T3]) ->
    io:format("[[H|T1]|T2] -> ~p, ~p~n", [[T1|T2], [H2,T3,H]]),
    flattern([T1|T2], [H2,H]);

flattern([[]|T2], T) ->
    io:format("[[]|T2] -> ~p, ~p~n", [T2, T]),
    flattern(T2, T);

flattern([H|T1], []) ->
    io:format("[H|T1] -> ~p, ~p~n", [T1, [H]]),
    flattern(T1, [H]);

flattern([H|T1], [H2|T2]) ->
    io:format("[H|T1] -> ~p, ~p~n", [T1, [H2,T2,H]]),
    flattern(T1, [H2,T2,H]);

flattern([], T) ->
    T.
