defmodule Roman do
  def to_arabic(roman), do: _to_arabic(String.to_char_list(roman), 0, '')

  defp _to_arabic([?C, ?M|tail], arabic, _), do: _to_arabic(tail, arabic + _basic_arabic(?M) - _basic_arabic(?C), ?M)
  defp _to_arabic([?C, ?D|tail], arabic, _), do: _to_arabic(tail, arabic + _basic_arabic(?D) - _basic_arabic(?C), ?D)
  defp _to_arabic([?X, ?C|tail], arabic, _), do: _to_arabic(tail, arabic + _basic_arabic(?C) - _basic_arabic(?X), ?C)
  defp _to_arabic([?X, ?L|tail], arabic, _), do: _to_arabic(tail, arabic + _basic_arabic(?L) - _basic_arabic(?X), ?L)
  defp _to_arabic([?I, ?X|tail], arabic, _), do: _to_arabic(tail, arabic + _basic_arabic(?X) - _basic_arabic(?I), ?X)
  defp _to_arabic([?I, ?V|tail], arabic, _), do: _to_arabic(tail, arabic + _basic_arabic(?V) - _basic_arabic(?I), ?V)
  defp _to_arabic([head|tail], arabic, _), do: _to_arabic(tail, arabic + _basic_arabic(head), head)
  defp _to_arabic([], arabic, _), do: arabic

  defp _basic_arabic(?M), do: 1000
  defp _basic_arabic(?D), do: 500
  defp _basic_arabic(?C), do: 100
  defp _basic_arabic(?L), do: 50
  defp _basic_arabic(?X), do: 10
  defp _basic_arabic(?V), do: 5
  defp _basic_arabic(?I), do: 1
end
