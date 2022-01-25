defmodule Mates do
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

  # private fn
  defp operation(params) do
    {op, x, y} = params
    # if only support 2 blocks
    # if op == :sum, do: x + y, else: x - y
    # switch in other languages
    cond do
      op == :sum ->
        x + y

      op == :sub ->
        x - y

      op == :mul ->
        x * y

      op == :div ->
        div(x, y)

      true ->
        IO.puts(:stderr, "not supported operations")
        :error
    end
  end
end

result = Mates.sum(2, 3)
IO.puts("result is #{result}")
result = Mates.sub(4, 3)
IO.puts("result is #{result}")
result = Mates.mul(2, 3)
IO.puts("result is #{result}")
result = Mates.div_int(9, 3)
IO.puts("result is #{result}")
