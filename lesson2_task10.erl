-module(lesson2_task10).
-export([encode/1]).
-import(lesson2_task05, [reverse/1]).

encode([H|T]) ->
    encode(T, [{1, H}]).

encode([H|T], [{X, H}|T2]) ->
    encode(T, [{X+1, H}|T2]);

encode([H|T], Res) ->
    encode(T, [{1, H}|Res]);

encode([], Res) ->
    lesson2_task05:reverse(Res).