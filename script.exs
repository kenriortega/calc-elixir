defmodule Mates do
  def sum(x, y) do
    operation({:sum, x, y})
  end

  def sub(x, y) do
    operation({:sub, x, y})
  end

  # private fn
  defp operation(params) do
    {op, x, y} = params

    if op == :sum do
      x + y
    else
      x - y
    end
  end
end

result = Mates.sum(2, 3)
IO.puts("result is #{result}")
result = Mates.sub(4, 3)
IO.puts("result is #{result}")
