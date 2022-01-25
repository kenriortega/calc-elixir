defmodule Mates do
  def sum(x, y) do
    x + y
  end
end

result = Mates.sum(2, 3)
IO.puts("result is #{result}")
