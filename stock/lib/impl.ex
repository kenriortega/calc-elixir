# Use this impl when you need more spcefic behaivor
# defimpl Computer, for: [Stock.PC, Stock.Laptop] do
#   def start(item), do: "#{item.type} up"
#   def shutdown(item), do: "#{item.type} down"
# end

defimpl Computer, for: Any do
  def start(item), do: "Start #{item.type} up..."
  def shutdown(item), do: "shutdown #{item.type} down"
end
