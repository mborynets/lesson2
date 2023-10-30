-module(lesson2_task14).
-export([duplicate/1]).
-import(lesson2_task05, [reverse/1]).

duplicate([H|T]) ->
    duplicate(T, [H,H]).

duplicate([H|T], Res) ->
    duplicate(T, [H,H|Res]);

duplicate([], Res) ->
    lesson2_task05:reverse(Res).