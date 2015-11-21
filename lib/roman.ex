defmodule Roman do
  def to_arabic(roman), do: _to_arabic(String.to_char_list(roman), 0)

  defp _to_arabic([?C, ?M|tail], arabic), do: _to_arabic(tail, arabic + _subtract(?M, ?C))
  defp _to_arabic([?C, ?D|tail], arabic), do: _to_arabic(tail, arabic + _subtract(?D, ?C))
  defp _to_arabic([?X, ?C|tail], arabic), do: _to_arabic(tail, arabic + _subtract(?C, ?X))
  defp _to_arabic([?X, ?L|tail], arabic), do: _to_arabic(tail, arabic + _subtract(?L, ?X))
  defp _to_arabic([?I, ?X|tail], arabic), do: _to_arabic(tail, arabic + _subtract(?X, ?I))
  defp _to_arabic([?I, ?V|tail], arabic), do: _to_arabic(tail, arabic + _subtract(?V, ?I))
  defp _to_arabic([head|tail], arabic), do: _to_arabic(tail, arabic + _basic_arabic(head))
  defp _to_arabic([], arabic), do: arabic

  defp _subtract(from, minus), do: _basic_arabic(from) - _basic_arabic(minus)

  defp _basic_arabic(?M), do: 1000
  defp _basic_arabic(?D), do: 500
  defp _basic_arabic(?C), do: 100
  defp _basic_arabic(?L), do: 50
  defp _basic_arabic(?X), do: 10
  defp _basic_arabic(?V), do: 5
  defp _basic_arabic(?I), do: 1
end
