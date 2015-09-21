defmodule Arabic do
  def to_roman(arabic), do: _to_roman(arabic, "")

  defp _to_roman(arabic, roman) when arabic == 1000, do: "#{roman}M"
  defp _to_roman(arabic, roman) when arabic == 500, do: "#{roman}D"
  defp _to_roman(arabic, roman) when arabic == 100, do: "#{roman}C"
  defp _to_roman(arabic, roman) when arabic == 50, do: "#{roman}L"
  defp _to_roman(arabic, roman) when arabic == 10, do: "#{roman}X"
  defp _to_roman(arabic, roman) when arabic == 5, do: "#{roman}V"
  defp _to_roman(arabic, roman) when arabic == 1, do: "#{roman}I"

  defp _to_roman(arabic, roman) when arabic < 4 do
    _to_roman(arabic - 1, "#{roman}I")
  end
end
