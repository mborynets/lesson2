-module(lesson2_task15).
-export([replicate/2]).
-import(lesson2_task05, [reverse/1]).

replicate([H|T], X) ->
    replicate(T, [H], X-1, X).

replicate([], Res, 0, _) ->
    lesson2_task05:reverse(Res);

replicate([], [H|T], X, Y) ->
    replicate([], [H,H|T], X-1, Y);

replicate([H|T], Res, 0, Y) ->
    replicate(T, [H|Res], Y-1, Y);

replicate(Arr, [H|T], X, Y) ->
    replicate(Arr, [H,H|T], X-1, Y).