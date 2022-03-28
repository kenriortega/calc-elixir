defprotocol Computer do
  @type compu :: Stock.PC.t() | Stock.Laptop.t()

  @spec start(item :: compu) :: String.t()
  def start(item)

  @spec shutdown(item :: compu) :: String.t()
  def shutdown(item)
end
