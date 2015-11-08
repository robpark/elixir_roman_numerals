defmodule Arabic do
  def to_roman(arabic), do: _to_roman(arabic, "")

  defp _to_roman(arabic, roman) when arabic < -9, do: _to_roman_minus(arabic, roman, "X")
  defp _to_roman(arabic, roman) when arabic < 0, do: _to_roman_minus(arabic, roman, "I")

  defp _to_roman_minus(arabic, roman, digit) when arabic < 0 do
    chars = String.codepoints roman
    position = String.length(roman) - 1
    result_chars = List.insert_at chars, position, digit
    List.to_string result_chars
  end

  defp _to_roman(arabic, "XXXX"), do: _to_roman(arabic, "XL")
  defp _to_roman(arabic, "CCCC"), do: _to_roman(arabic, "CD")

  defp _to_roman(arabic, roman) when arabic >= 1000, do: _to_roman(arabic - 1000, "#{roman}M")
  defp _to_roman(arabic, roman) when arabic >= 900, do: _to_roman(arabic - 900, "#{roman}CM")
  defp _to_roman(arabic, roman) when arabic >= 500, do: _to_roman(arabic - 500, "#{roman}D")
  defp _to_roman(arabic, roman) when arabic >= 100, do: _to_roman(arabic - 100, "#{roman}C")
  defp _to_roman(arabic, roman) when arabic >= 90, do: _to_roman(arabic - 90, "#{roman}XC")
  defp _to_roman(arabic, roman) when arabic >= 50, do: _to_roman(arabic - 50, "#{roman}L")
  defp _to_roman(arabic, roman) when arabic >= 40, do: _to_roman(arabic - 40, "#{roman}XL")
  defp _to_roman(arabic, roman) when arabic >= 9, do: _to_roman(arabic - 10, "#{roman}X")
  defp _to_roman(arabic, roman) when arabic >= 4, do: _to_roman(arabic - 5, "#{roman}V")
  defp _to_roman(arabic, roman) when arabic >= 1, do: _to_roman(arabic - 1, "#{roman}I")
  defp _to_roman(arabic, roman) when arabic == 0, do: roman
end
