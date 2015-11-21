defmodule CombinedTest do
  use ExUnit.Case

  Enum.each 1..5, fn(arabic) ->
    roman = Arabic.to_roman arabic
    computed_arabic = Roman.to_arabic roman
    test "#{arabic} -- #{roman} -- #{computed_arabic}" do
      assert unquote(computed_arabic) == unquote(arabic)
    end
  end
end
