class Item
  attr_reader :name, :merchant_id

  def initialize(data)
    @name = data[:attributes][:name]
    @merchant_id = data[:attributes][:merchant_id]
  end
end