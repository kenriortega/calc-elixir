defmodule Calc do
  @moduledoc """
  A basic calc module

  You can be use std/elixir for this operations

  ## Example
  iex> Calc.sum(25,11)
  36
  """

  # Alias and Imports
  alias Calc.Operation
  import Calc.Private, only: :functions

  @doc """
  Add `x` and `y` and return the result of the sum
  """
  def sum(x, y) do
    operation(%Operation{a: x, b: y, operation: &+/2})
  end

  @doc """
  Add `x` and `y` and return the result of the sub

  ## Examples
  iex> Calc.sub(5,1)
  4
  """
  def sub(x, y) do
    operation(%Operation{a: x, b: y, operation: &-/2})
  end

  def mul(x, y) do
    operation(%Operation{a: x, b: y, operation: &*/2})
  end

  def divi(x, y) when x > 0 and y > 0 do
    operation(%Operation{a: x, b: y, operation: &div/2})
  end
end
