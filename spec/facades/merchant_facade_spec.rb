require 'rails_helper'
require './app/facades/merchant_facade'

RSpec.describe MerchantFacade do

  it 'exists' do
    merchant_facade = MerchantFacade.new
    expect(merchant_facade).to be_a(MerchantFacade)
  end

  it 'can return merchant attributes' do
    expect(MerchantFacade.get_merchants).to be_an(Array)
  end
end