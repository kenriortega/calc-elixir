defmodule Calc do
  alias Calc.Operation

  # public fn
  def sum(x, y) do
    Calc.Private.operation(%Operation{a: x, b: y, operation: &+/2})
  end

  def sub(x, y) do
    Calc.Private.operation(%Operation{a: x, b: y, operation: &-/2})
  end

  def mul(x, y) do
    Calc.Private.operation(%Operation{a: x, b: y, operation: &*/2})
  end

  def divi(x, y) when x > 0 and y > 0 do
    Calc.Private.operation(%Operation{a: x, b: y, operation: &div/2})
  end
end
