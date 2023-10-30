-module(lesson2_task06).
-export([is_palindrome/1]).
-import(lesson2_task05, [reverse/1]).

is_palindrome(Arr) ->
    is_palindrome(Arr, lesson2_task05:reverse(Arr)).

is_palindrome([], []) ->
    true;

is_palindrome([_], []) ->
    true;

is_palindrome([H1|T1], [H1|T2]) ->
    is_palindrome(T1, T2);

is_palindrome(_, _) ->
    false.