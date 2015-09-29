defmodule ArabicTest do
  use ExUnit.Case

  test "generic" do
    tuples = [
      {:I, 1}, {:II, 2}, {:III, 3}, {:IV, 4}, {:V, 5}, {:VI, 6}, {:VII, 7}, {:VIII, 8}, {:IX, 9},
      {:X, 10}, {:XI, 11}, {:XII, 12}, {:XIII, 13}, {:XIV, 14}, {:XV, 15}, {:XVI, 16}, {:XVII, 17},
      {:XVIII, 18}, {:XIX, 19}, {:XX, 20}, {:XXI, 21}, {:XXII, 22}, {:XXIII, 23}, {:XXIV, 24},
      {:XXV, 25}, {:XXVI, 26}, {:XXVII, 27}, {:XXVIII, 28}, {:XXIX, 29}, {:XXX, 30}, {:XXXI, 31},
      {:XXXII, 32}, {:XXXIII, 33}, {:XXXIV, 34}, {:XXXV, 35}, {:XXXVI, 36}, {:XXXVII, 37},
      {:XXXVIII, 38}, {:XXXIX, 39}, {:XL, 40}, {:XLI, 41}, {:XLII, 42}, {:XLIII, 43}, {:XLIV, 44},
      {:XLV, 45}, {:XLVI, 46}, {:XLVII, 47}, {:XLVIII, 48},
      {:IL, 49}, {:L, 50}, {:LI, 51},
      # {:XC, 90},
      {:IC, 99}, {:C, 100}, {:CI, 101},
      {:CD, 400}, {:ID, 499}, {:D, 500}, {:DI, 501},
      {:IM, 999}, {:M, 1000}, {:MI, 1001}
    ]
    _execute_tests_for tuples
  end

  defp _execute_tests_for([head|[]]) do
    _assert_conversion head
  end

  defp _execute_tests_for([head|tail]) do
    _assert_conversion head
    _execute_tests_for tail
  end

  defp _assert_conversion(tuple) do
    arabic = elem tuple, 1
    roman = to_string elem(tuple, 0)
    assert Arabic.to_roman(arabic) == roman
    IO.puts "#{arabic} ==> #{roman}"
  end
end
