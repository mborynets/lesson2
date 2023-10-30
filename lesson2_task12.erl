-module(lesson2_task12).
-export([decode_modified/1]).
-import(lesson2_task05, [reverse/1]).

decode_modified([H|T]) ->
    decode_modified(T, [H]).

decode_modified([], [{1, H}|T]) ->
    decode_modified([], [H|T]);

decode_modified([H|T], [{1, H2}|T2]) ->
    decode_modified(T, [H,H2|T2]);

decode_modified(Arr, [{X, H}|T]) ->
    decode_modified(Arr, [{X-1, H},H|T]);

decode_modified([H|T], Res) ->
    decode_modified(T, [H|Res]);

decode_modified([], Res) ->
    lesson2_task05:reverse(Res).