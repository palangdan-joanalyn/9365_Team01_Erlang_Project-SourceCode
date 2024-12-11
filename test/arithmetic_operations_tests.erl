-module(arithmetic_operations_tests).

-include_lib("eunit/include/eunit.hrl").  % Include EUnit header


% Test cases for arithmetic_operations module
add_test() ->
    ?assertEqual(5, arithmetic_operations:add_two_num(2, 3)),
    ?assertEqual(0, arithmetic_operations:add_two_num(-2, 2)),
    ?assertEqual(-5, arithmetic_operations:add_two_num(-2, -3)).


subtract_test() ->
    ?assertEqual(1, arithmetic_operations:subtract_two_num(3, 2)),
    ?assertEqual(-4, arithmetic_operations:subtract_two_num(-2, 2)),
    ?assertEqual(1, arithmetic_operations:subtract_two_num(-2, -3)).


multiply_test() ->
    ?assertEqual(6, arithmetic_operations:multiply_two_num(2, 3)),
    ?assertEqual(0, arithmetic_operations:multiply_two_num(0, 5)),
    ?assertEqual(6, arithmetic_operations:multiply_two_num(-2, -3)).


divide_test() ->
    ?assertEqual(2.0, arithmetic_operations:divide_two_num(6, 3)),
    ?assertEqual({error, division_by_zero}, arithmetic_operations:divide_two_num(6, 0)),
    ?assertEqual(-2.0, arithmetic_operations:divide_two_num(-6, 3)).


integer_division_test() ->
    ?assertEqual(2, arithmetic_operations:integer_division(5, 2)),
    ?assertEqual({error, division_by_zero}, arithmetic_operations:integer_division(5, 0)),
    ?assertEqual(-2, arithmetic_operations:integer_division(-5, 2)).