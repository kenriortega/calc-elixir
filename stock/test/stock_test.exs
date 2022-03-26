defmodule StockTest do
  use ExUnit.Case
  doctest Stock

  test "greets the world" do
    assert Stock.hello() == :world
  end
end
