-module(lesson2_task08).
-export([compress/1]).
-import(lesson2_task05, [reverse/1]).

compress([H|T]) ->
    compress([H|T], H, []).

compress([H|T], H, Res) ->
    compress(T, H, Res);

compress([H|T], H2, Res) ->
    compress([H|T], H, [H2|Res]);

compress([], H, Res) ->
    lesson2_task05:reverse([H|Res]).