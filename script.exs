defmodule Calc do
  def sum(x, y) do
    operation({:sum, x, y})
  end

  def sub(x, y) do
    operation({:sub, x, y})
  end

  def mul(x, y) do
    operation({:mul, x, y})
  end

  def div_int(x, y) when x > 0 and y > 0 do
    operation({:div, x, y})
  end

  defp operation({:sum, x, y}), do: x + y
  defp operation({:sub, x, y}), do: x - y
  defp operation({:mul, x, y}), do: x * y
  defp operation({:div, x, y}), do: div(x, y)
end

result = Calc.sum(2, 3)
IO.puts("result is #{result}")
result = Calc.sub(4, 3)
IO.puts("result is #{result}")
result = Calc.mul(2, 3)
IO.puts("result is #{result}")
result = Calc.div_int(9, 3)
IO.puts("result is #{result}")
