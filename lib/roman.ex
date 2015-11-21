defmodule Roman do
  def to_arabic(roman), do: _to_arabic(String.to_char_list(roman), 0)

  # defp _to_arabic([head|tail], arabic), do: head

  defp _to_arabic([head|tail], arabic) when head == ?M, do: _to_arabic(tail, arabic + 1000)
  defp _to_arabic([head|tail], arabic) when head == ?D, do: _to_arabic(tail, arabic + 500)
  defp _to_arabic([head|tail], arabic) when head == ?C, do: _to_arabic(tail, arabic + 100)
  defp _to_arabic([head|tail], arabic) when head == ?L, do: _to_arabic(tail, arabic + 50)
  defp _to_arabic([head|tail], arabic) when head == ?X, do: _to_arabic(tail, arabic + 10)
  defp _to_arabic([head|tail], arabic) when head == ?V, do: _to_arabic(tail, arabic + 5)
  defp _to_arabic([head|tail], arabic) when head == ?I, do: _to_arabic(tail, arabic + 1)
  defp _to_arabic([], arabic), do: arabic
end
