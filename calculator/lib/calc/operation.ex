defmodule Calc.Operation do
  @enforce_keys [:a, :b, :operation]
  defstruct [:operation, a: 0, b: 0]
end

defimpl Inspect, for: Calc.Operation do
  def inspect(%Calc.Operation{a: a, b: b, operation: op}, _opts) do
    "#{a} #{op} #{b}"
  end
end
