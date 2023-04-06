class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.get_merchants
  end

  def show
    @merchant = MerchantFacade.get_merchants.find { |merchant| merchant.id == params[:id]}
    @items = MerchantFacade.get_merchant_items(params[:id])
  end
end