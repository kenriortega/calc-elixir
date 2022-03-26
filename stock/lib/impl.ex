defimpl Computer, for: [Stock.PC, Stock.Laptop] do
  def start(item), do: "#{item.type} up"
  def shutdown(item), do: "#{item.type} down"
end

defimpl Computer, for: Any do
  def start(_item), do: "Start up..."
  def shutdown(_item), do: "shutdown down"
end
