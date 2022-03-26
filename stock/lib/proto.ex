defprotocol Computer do
  @fallback_to_any true
  def start(item)
  def shutdown(item)
end
