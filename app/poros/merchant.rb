class Merchant
  attr_reader :name, :id

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
  end
end