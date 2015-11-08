defmodule ArabicTest do
  use ExUnit.Case

  @tuples [
     {:I, 1}, {:II, 2}, {:III, 3}, {:IV, 4}, {:V, 5}, {:VI, 6}, {:VII, 7}, {:VIII, 8}, {:IX, 9},
     {:X, 10}, {:XI, 11}, {:XII, 12}, {:XIII, 13}, {:XIV, 14}, {:XV, 15}, {:XVI, 16}, {:XVII, 17},
     {:XVIII, 18}, {:XIX, 19}, {:XX, 20}, {:XXI, 21}, {:XXII, 22}, {:XXIII, 23}, {:XXIV, 24},
     {:XXV, 25}, {:XXVI, 26}, {:XXVII, 27}, {:XXVIII, 28}, {:XXIX, 29}, {:XXX, 30}, {:XXXI, 31},
     {:XXXII, 32}, {:XXXIII, 33}, {:XXXIV, 34}, {:XXXV, 35}, {:XXXVI, 36}, {:XXXVII, 37},
     {:XXXVIII, 38}, {:XXXIX, 39}, {:XL, 40}, {:XLI, 41}, {:XLII, 42}, {:XLIII, 43}, {:XLIV, 44},
     {:XLV, 45}, {:XLVI, 46}, {:XLVII, 47}, {:XLVIII, 48}, {:IL, 49}, {:L, 50}, {:LI, 51},
     {:LIV, 54}, {:LV, 55}, {:LXVII, 67}, {:LXIX, 69}, {:LXXXIX, 89}, {:XC, 90}, {:IC, 99},
     {:C, 100}, {:CI, 101}, {:CD, 400}, {:ID, 499}, {:D, 500}, {:DI, 501}, {:IM, 999}, {:M, 1000},
     {:MI, 1001}
   ]

  Enum.each @tuples, fn(pair) ->
    test "from #{elem pair, 1}" do
      _assert_conversion(unquote(pair))
    end

    test "at most 3: #{elem pair, 1}" do
      _assert_no_more_than_3(unquote(pair))
    end
  end

  defp _assert_conversion(tuple) do
    arabic = elem tuple, 1
    roman = to_string elem(tuple, 0)
    assert Arabic.to_roman(arabic) == roman
  end

  defp _assert_no_more_than_3(tuple) do
    roman = to_string elem(tuple, 0)
    refute String.contains?(roman, "IIII"), "#{roman}: too many I"
    refute String.contains?(roman, "XXXX"), "#{roman}: too many X"
    refute String.contains?(roman, "CCCC"), "#{roman}: too many C"
    refute String.contains?(roman, "MMMM"), "#{roman}: too many M"
  end
end
