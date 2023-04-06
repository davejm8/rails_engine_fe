class MerchantFacade

  def self.get_merchants
    MerchantService.get_merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
  
  def self.get_merchant_items(id)
    MerchantService.get_merchant_items(id)[:data].map do |item|
      Item.new(item)
    end
  end
end