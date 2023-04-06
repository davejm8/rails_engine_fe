class Merchant
  attr_reader :name,
              :id

  def initialize(merchant)
    @name = merchant[:attributes][:name]
    @id = merchant[:id]
  end
end