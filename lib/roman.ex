defmodule Roman do
  def to_arabic(roman), do: _to_arabic(roman, 0)

  defp _to_arabic(roman, arabic) when roman == "M", do: _to_arabic("", arabic + 1000)
  defp _to_arabic(roman, arabic) when roman == "D", do: _to_arabic("", arabic + 500)
  defp _to_arabic(roman, arabic) when roman == "C", do: _to_arabic("", arabic + 100)
  defp _to_arabic(roman, arabic) when roman == "L", do: _to_arabic("", arabic + 50)
  defp _to_arabic(roman, arabic) when roman == "X", do: _to_arabic("", arabic + 10)
  defp _to_arabic(roman, arabic) when roman == "V", do: _to_arabic("", arabic + 5)
  defp _to_arabic(roman, arabic) when roman == "I", do: _to_arabic("", arabic + 1)
  defp _to_arabic(roman, arabic) when roman == "", do: arabic
end
