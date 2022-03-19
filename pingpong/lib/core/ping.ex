defmodule Ping do
  def ping() do
    receive do
      {:ping, pong_id} ->
        IO.puts("Ping! ------->")
        Process.sleep(5_00)
        send(pong_id, {:pong, self()})
        ping()

        :boom -> exit(:BOOM)
      _ ->
        ping()
    end
  end
end
