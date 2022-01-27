defmodule RecurivifyTest do
  use ExUnit.Case
  doctest Recurivify

  test "greets the world" do
    assert Recurivify.hello() == :world
  end
end
