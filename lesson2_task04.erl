-module(lesson2_task04).
-export([len/1]).

len(Arr) ->
    len(Arr, 0).

len([H|T], Len) ->
    len(T, Len + 1);

len([], Len) ->
    Len.