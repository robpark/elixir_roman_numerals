defmodule ArabicTest do
  use ExUnit.Case

  test "1" do
    assert Arabic.to_roman(1) == "I"
  end

  test "5" do
    assert Arabic.to_roman(5) == "V"
  end

  test "10" do
    assert Arabic.to_roman(10) == "X"
  end

  test "50" do
    assert Arabic.to_roman(50) == "L"
  end

  test "100" do
    assert Arabic.to_roman(100) == "C"
  end

  test "500" do
    assert Arabic.to_roman(500) == "D"
  end

  test "1000" do
    assert Arabic.to_roman(1000) == "M"
  end
end
