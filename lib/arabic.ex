defmodule Arabic do
  def to_roman(arabic) when arabic == 1000, do: "M"
  def to_roman(arabic) when arabic == 500, do: "D"
  def to_roman(arabic) when arabic == 100, do: "C"
  def to_roman(arabic) when arabic == 50, do: "L"
  def to_roman(arabic) when arabic == 10, do: "X"
  def to_roman(arabic) when arabic == 5, do: "V"
  def to_roman(arabic), do: "I"
end
