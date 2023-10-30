-module(lesson2_task13).
-export([decode/1]).
-import(lesson2_task05, [reverse/1]).

decode([H|T]) ->
    decode(T, [H]).

decode([], [{1, H}|T]) ->
    decode([], [H|T]);

decode([H|T], [{1, H2}|T2]) ->
    decode(T, [H,H2|T2]);

decode(Arr, [{X, H}|T]) ->
    decode(Arr, [{X-1, H},H|T]);

decode([], Res) ->
    lesson2_task05:reverse(Res).