defmodule ArabicTest do
  use ExUnit.Case

  test "basic digits" do
    assert Arabic.to_roman(1) == "I"
    assert Arabic.to_roman(5) == "V"
    assert Arabic.to_roman(10) == "X"
    assert Arabic.to_roman(50) == "L"
    assert Arabic.to_roman(100) == "C"
    assert Arabic.to_roman(500) == "D"
    assert Arabic.to_roman(1000) == "M"
  end

  test "summed digits" do
    assert Arabic.to_roman(2) == "II"
    assert Arabic.to_roman(3) == "III"
    assert Arabic.to_roman(6) == "VI"
    assert Arabic.to_roman(7) == "VII"
    assert Arabic.to_roman(8) == "VIII"
    assert Arabic.to_roman(11) == "XI"
    assert Arabic.to_roman(12) == "XII"
    assert Arabic.to_roman(13) == "XIII"
    assert Arabic.to_roman(51) == "LI"
    assert Arabic.to_roman(101) == "CI"
    assert Arabic.to_roman(501) == "DI"
    assert Arabic.to_roman(1001) == "MI"
  end

  test "decremented values" do
    assert Arabic.to_roman(4) == "IV"
    assert Arabic.to_roman(9) == "IX"
    assert Arabic.to_roman(14) == "XIV"
    assert Arabic.to_roman(49) == "IL"
    assert Arabic.to_roman(99) == "IC"
    assert Arabic.to_roman(499) == "ID"
    assert Arabic.to_roman(999) == "IM"
  end
end
