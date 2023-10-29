-module(lesson2_task01).
-export([last/1]).

last([T]) ->
    T;

last([_|T]) ->
    last(T).