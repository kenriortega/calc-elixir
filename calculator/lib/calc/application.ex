defmodule Calc.Application do
  use Application

  def start(_type, _args) do
    pid_calc = spawn(Calc.CLI, :start, [])
    {:ok, pid_calc}
  end
end
