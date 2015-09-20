defmodule ArabicTest do
  use ExUnit.Case

  test "1" do
    assert Arabic.to_roman(1) == "I"
  end
end
