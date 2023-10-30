-module(lesson2_task09).
-export([pack/1]).
-import(lesson2_task05, [reverse/1]).

pack([H|T]) ->
    pack(T, [[H]]).

pack([H|T], [[H|T2]|T3]) ->
    pack(T, [[H|[H|T2]]|T3]);

pack([H|T], Res) ->
    pack(T, [[H]|Res]);

pack([], Res) ->
    lesson2_task05:reverse(Res).