defmodule CombinedTest do
  use ExUnit.Case

  Enum.each 1..2000, fn(arabic) ->
    roman = Arabic.to_roman arabic
    computed_arabic = Roman.to_arabic roman

    test "#{arabic} -- #{roman} -- #{computed_arabic}" do
      assert unquote(computed_arabic) == unquote(arabic)
    end

    test "at most 3: #{roman}" do
      _assert_no_more_than_3(unquote(roman))
    end

    test "no repeats: #{roman}" do
      _assert_no_repeats(unquote(roman))
    end

    test "only subract from 2 next highest: #{roman}" do
      _assert_subtraction_from_2_next(unquote(roman))
    end

    test "only 1 subraction per numeral: #{roman}" do
      _assert_1_subtraction_per(unquote(roman))
    end

    test "cannot subtract: #{roman}" do
      _assert_cannot_subtract(unquote(roman))
    end
  end

  defp _assert_no_more_than_3(roman) do
    refute String.contains?(roman, "IIII"), "#{roman}: too many I"
    refute String.contains?(roman, "XXXX"), "#{roman}: too many X"
    refute String.contains?(roman, "CCCC"), "#{roman}: too many C"
    refute String.contains?(roman, "MMMM"), "#{roman}: too many M"
  end

  defp _assert_no_repeats(roman) do
    refute String.contains?(roman, "VV"), "#{roman}: repeated V"
    refute String.contains?(roman, "LL"), "#{roman}: repeated L"
    refute String.contains?(roman, "DD"), "#{roman}: repeated D"
  end

  defp _assert_subtraction_from_2_next(roman) do
    refute String.contains?(roman, "IL")
    refute String.contains?(roman, "IC")
    refute String.contains?(roman, "ID")
    refute String.contains?(roman, "IM")
    refute String.contains?(roman, "XD")
    refute String.contains?(roman, "XM")
  end

  defp _assert_1_subtraction_per(roman) do
    refute String.contains?(roman, "IIV")
    refute String.contains?(roman, "IIX")
    refute String.contains?(roman, "XXL")
    refute String.contains?(roman, "XXC")
    refute String.contains?(roman, "CCD")
    refute String.contains?(roman, "CCM")
  end

  defp _assert_cannot_subtract(roman) do
    refute String.contains?(roman, "VX")
    refute String.contains?(roman, "LC")
    refute String.contains?(roman, "DM")
  end
end
