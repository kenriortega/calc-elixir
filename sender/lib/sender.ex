defmodule Sender do
  @moduledoc """
  Documentation for `Sender`.
  """

  def send_email(email) do
    Process.sleep(3000)
    IO.puts("Email to #{email} sent")
    {:ok, "email_sent"}
  end

  def notify_all(email) do
    Enum.each(email, &send_email/1)
  end
end
