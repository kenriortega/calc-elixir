defmodule Calc.Private do
  def operation({:sum, x, y}), do: x + y
  def operation({:sub, x, y}), do: x - y
  def operation({:mul, x, y}), do: x * y
  def operation({:div, x, y}), do: div(x, y)
end
