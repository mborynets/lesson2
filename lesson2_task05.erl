-module(lesson2_task05).
-export([reverse/1]).

reverse([]) ->
    [];

reverse([H|T]) ->
    reverse(T, [H]).

reverse([H1|T1], Arr) ->
    reverse(T1, [H1|Arr]);

reverse([], Arr) ->
    Arr.