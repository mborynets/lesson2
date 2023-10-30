-module(lesson2_task07).
-export([flatten/1]).
-import(lesson2_task05, [reverse/1]).

flatten(Arr) ->
    flatten(Arr, []).

flatten([[H|[]]|T], Res) ->
    flatten(T, [H|Res]);

flatten([[H|T2] | T], Res) ->
    flatten([T2|T], [H|Res]);

flatten([[]|T], Res) ->
    flatten(T, Res);

flatten([H|T], Res) ->
    flatten(T, [H|Res]);

flatten([], Res) ->
    lesson2_task05:reverse(Res);

flatten(H, Res) ->
    flatten([], [H|Res]).