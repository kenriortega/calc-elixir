defmodule Pong do
  def pong() do
    receive do
      {:pong, ping_id} ->
        IO.puts("<-------Pong")
        Process.sleep(5_00)
        send(ping_id, {:ping, self()})
        pong()

      _ ->
        pong()
    end
  end
end
