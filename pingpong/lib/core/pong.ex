defmodule Pong do
  def pong() do
    receive do
      {:pong, ping_id} ->
        State.set(1)
        IO.puts("<-------Pong #{State.get()}")
        Process.sleep(5_00)
        send(ping_id, {:ping, self()})
        pong()

      _ ->
        pong()
    end
  end
end
