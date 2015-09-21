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
  end
end
