defmodule Pingpong do
  def start() do
    make_process()
    |> run()

    receive do
      {:DOWN, _ref, :process, pid, reason} ->
        IO.puts("Process down #{Atom.to_string(reason)}")
        IO.inspect(Process.alive?(pid))
        start()
    end
  end

  def make_process() do
    ping = spawn(Ping, :ping, [])
    pong = spawn(Pong, :pong, [])
    {ping, pong}
  end

  def run({ping, pong}) do
    send(ping, {:ping, pong})
    Process.send_after(ping, :boom, 5_000)
    Process.monitor(ping)
    Process.monitor(pong)
  end
end
