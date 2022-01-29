defmodule Calc.Private do
  alias Calc.Operation
  def operation(%Operation{a: a, b: b, operation: op}), do: op.(a, b)
end
