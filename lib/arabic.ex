defmodule Arabic do
  def to_roman(arabic), do: _to_roman(arabic, "")

  defp _to_roman(arabic, roman) when arabic >= 1000, do: _to_roman(arabic - 1000, "#{roman}M")
  defp _to_roman(arabic, roman) when arabic >= 900, do: _to_roman(arabic - 900, "#{roman}CM")
  defp _to_roman(arabic, roman) when arabic >= 500, do: _to_roman(arabic - 500, "#{roman}D")
  defp _to_roman(arabic, roman) when arabic >= 400, do: _to_roman(arabic - 400, "#{roman}CD")
  defp _to_roman(arabic, roman) when arabic >= 100, do: _to_roman(arabic - 100, "#{roman}C")
  defp _to_roman(arabic, roman) when arabic >= 90, do: _to_roman(arabic - 90, "#{roman}XC")
  defp _to_roman(arabic, roman) when arabic >= 50, do: _to_roman(arabic - 50, "#{roman}L")
  defp _to_roman(arabic, roman) when arabic >= 40, do: _to_roman(arabic - 40, "#{roman}XL")
  defp _to_roman(arabic, roman) when arabic >= 10, do: _to_roman(arabic - 10, "#{roman}X")
  defp _to_roman(arabic, roman) when arabic >= 9, do: _to_roman(arabic - 9, "#{roman}IX")
  defp _to_roman(arabic, roman) when arabic >= 5, do: _to_roman(arabic - 5, "#{roman}V")
  defp _to_roman(arabic, roman) when arabic >= 4, do: _to_roman(arabic - 4, "#{roman}IV")
  defp _to_roman(arabic, roman) when arabic >= 1, do: _to_roman(arabic - 1, "#{roman}I")
  defp _to_roman(arabic, roman) when arabic == 0, do: roman
end
