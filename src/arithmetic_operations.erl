-module(arithmetic_operations).
-export([add_two_num/2,subtract_two_num/2,multiply_two_num/0,divide_two_num/2,integer_division/2]).


add_two_num(Num1, Num2) ->
    Num1 + Num2.

subtract_two_num(Num1, Num2) ->
    Num1 - Num2.
multiply_two_num(Num1, Num2) ->
    Num1 * Num2.
divide_two_num(Num1, 0) ->
    {error, division_by_zero};

divide_two_num(Num1, Num2) ->
    Num1 / Num2.

integer_division(Num1, 0) ->
    {error, division_by_zero};
integer_division(Num1, Num2) ->
    Num1 div Num2.