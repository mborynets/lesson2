-module(lesson2_task02).
-export([but_last/1]).

but_last([H,T]) ->
    [H,T];

but_last([_|T]) ->
    but_last(T);

but_last([]) ->
    [].