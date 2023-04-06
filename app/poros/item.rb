class Item
  attr_reader :name, :unit_price, :id, :description, :merchant_id

  def initialize(item)
    @name = item[:attributes][:name]
    @description = item[:attributes][:description]
    @unit_price = item[:attributes][:unit_price]
    @id = item[:attributes][:id]
    @merchant_id = item[:attributes][:merchant_id]
  end
end