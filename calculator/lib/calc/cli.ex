defmodule Calc.CLI do
  def start() do
    [n1, n2] = IO.gets("Insert two numbers: ") |> parse_number_imput()
    op = IO.gets("Insert operation or q for finiched (+-*/): ") |> parse_op_input()
    result = make_operation(op, {n1, n2})
    IO.puts("El result from #{n1} #{op} #{n2} = #{result}")
    start()
  end

  defp make_operation(op, {n1, n2}) do
    case op do
      :+ -> Calc.sum(n1, n2)
      :- -> Calc.sub(n1, n2)
      :* -> Calc.mul(n1, n2)
      :/ -> Calc.divi(n1, n2)
      :q -> System.halt(0)
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
