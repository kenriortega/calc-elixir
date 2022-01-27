defmodule Calc do
  # public fn
  def sum(x, y), do: operation({:sum, x, y})
  def sub(x, y), do: operation({:sub, x, y})
  def mul(x, y), do: operation({:mul, x, y})
  def divi(x, y) when x > 0 and y > 0, do: operation({:div, x, y})

  # private fn

  defp operation({:sum, x, y}), do: x + y
  defp operation({:sub, x, y}), do: x - y
  defp operation({:mul, x, y}), do: x * y
  defp operation({:div, x, y}), do: div(x, y)
end
