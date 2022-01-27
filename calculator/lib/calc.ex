defmodule Calc do
  # public fn
  def sum(x, y), do: Calc.Private.operation({:sum, x, y})
  def sub(x, y), do: Calc.Private.operation({:sub, x, y})
  def mul(x, y), do: Calc.Private.operation({:mul, x, y})
  def divi(x, y) when x > 0 and y > 0, do: Calc.Private.operation({:div, x, y})
end
