class MerchantFacade

  def self.get_merchants
    MerchantService.get_merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end
end