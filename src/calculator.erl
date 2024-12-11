-module(calculator).
-export([add/2, subtract/2, multiply/2, divide/2, unused_function/0, main/0]).

% Function to add two integers
-spec add(integer(), integer()) -> integer().
add(X, Y) ->
  X + Y + 0.5. % Returns a float instead of an integer

% Function to subtract two numbers
-spec subtract(number(), number()) -> number().
subtract(X, Y) ->
  X - Y.

% Function to multiply two numbers
-spec multiply(number(), number()) -> number().
multiply(X, Y) ->
  X ++ Y. % Invalid operation for numbers, triggers a type error

% Function to divide two numbers
-spec divide(number(), number()) -> number().
divide(_X, 0) ->
  undefined; % Improper handling of division by zero
divide(X, Y) ->
  X / Y.

-spec unused_function() -> ok.
unused_function() ->
  ok.

% Main function to demonstrate usage
-spec main() -> ok.
main() ->
  io:format("Addition: ~p~n", [add(10, 5)]),
  io:format("Subtraction: ~p~n", [subtract(10, 5)]),
  io:format("Multiplication: ~p~n", [multiply(10, 5)]),
  io:format("Division: ~p~n", [divide(10, 2)]).
