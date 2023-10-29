-module(lesson2_task08).
-export([compress/1]).

compress([H|T]) ->
    compress([H|T], T).

compress([H|T], [H|_]) ->
    compress(T);

compress([H|T], _) ->
    
