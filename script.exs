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

defmodule Calc.CLI do
  def start() do
    [n1, n2] =
      IO.gets("Insert two numbers: ")
      |> String.split(" ")
      |> Enum.map(&String.trim/1)
      |> Enum.map(&String.to_integer/1)
      |> Enum.into([])

    IO.puts("The nums are #{n1} #{n2}")
  end
end

Calc.CLI.start()
