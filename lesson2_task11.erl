-module(lesson2_task11).
-export([encode_modified/1]).
-import(lesson2_task05, [reverse/1]).

encode_modified([H|T]) ->
    encode_modified(T, [H]).

encode_modified([H|T], [H|T2]) ->
    encode_modified(T, [{2, H}|T2]);

encode_modified([H|T], [{X, H}|T2]) ->
    encode_modified(T, [{X+1, H}|T2]);

encode_modified([H|T], Res) ->
    encode_modified(T, [H|Res]);

encode_modified([], Res) ->
    lesson2_task05:reverse(Res).