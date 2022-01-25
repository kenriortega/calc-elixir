defmodule Calc do
  # public fn
  def sum(x, y), do: operation({:sum, x, y})
  def sub(x, y), do: operation({:sub, x, y})
  def mul(x, y), do: operation({:mul, x, y})
  def div_int(x, y) when x > 0 and y > 0, do: operation({:div, x, y})

  # private fn

  defp operation({:sum, x, y}), do: x + y
  defp operation({:sub, x, y}), do: x - y
  defp operation({:mul, x, y}), do: x * y
  defp operation({:div, x, y}), do: div(x, y)
end

defmodule Calc.CLI do
  def start() do
    [n1, n2] = IO.gets("Insert two numbers: ") |> parse_number_imput()
    op = IO.gets("Insert operation (+-*/): ") |> parse_op_input()
    result = make_operation(op, {n1, n2})
    IO.puts("El result from #{n1} #{op} #{n2} = #{result}")
  end

  defp make_operation(op, {n1, n2}) do
    case op do
      :+ -> Calc.sum(n1, n2)
      :- -> Calc.sub(n1, n2)
      :* -> Calc.mul(n1, n2)
      :/ -> Calc.div(n1, n2)
    end
  end

  defp parse_op_input(str) do
    str
    |> String.trim()
    |> String.to_atom()
  end

  defp parse_number_imput(str) do
    str
    |> String.split(" ")
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
  end
end

Calc.CLI.start()
