defmodule Greet.Behavior do
  @callback greet(name :: binary()) :: binary()
end

defmodule Greeter.Spanish do
  @behaviour Greet.Behavior
  def greet(name), do: "Hola #{name}"
end

defmodule Greeter.English do
  @behaviour Greet.Behavior
  def greet(name), do: "Hi #{name}"
end

defmodule Greeter do
  @behaviour Greet.Behavior

  defp load_env() do
    lang = Application.fetch_env!(:greeter, :greet)

    case lang do
      "ES" -> Greeter.Spanish
      "EN" -> Greeter.English
    end
  end

  def greet(name) do
    i18n = load_env()
    i18n.greet(name)
  end
end
