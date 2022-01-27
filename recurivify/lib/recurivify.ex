defmodule Recurivify do
  # module attributes

  def gretter(name, count \\ 1) do
    periodically_run(fn -> IO.puts("hola #{name}") end, count)
  end

  def periodically_run(func, count \\ 1) do
    if count >= 1 do
      func.()
      periodically_run(func, count - 1)
    end
  end

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def each([], _func), do: nil

  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def filter([], _func), do: []

  def filter([head | tail], func) do
    result = func.(head)

    if result == true do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  # def filter([head | tail], func) do
  #   (func.(head) && [head | filter(tail, func)]) || filter(tail, func)
  # end

  def reduce([], acc, _func), do: acc

  def reduce([head | tail], acc, func) do
    new_acc = func.(head, acc)
    reduce(tail, new_acc, func)
  end
end

defmodule Attr do
  @on_load :init
  @myconst "CONST_APP"
  def load_key(), do: Application.get_env(:recurivify, :api_key, "mysecret")

  def init, do: load_key() |> IO.puts()
end
