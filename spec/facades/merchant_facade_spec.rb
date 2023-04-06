require 'rails_helper'
require './app/facades/merchant_facade'

RSpec.describe MerchantFacade do
  before :each do
    merchants_response = File.read('spec/fixtures/merchants.json')
    stub_request(:get, "http://localhost:3000/api/v1/merchants")
      .to_return(status: 200, body: merchants_response)
  end

  it 'exists' do
    merchant_facade = MerchantFacade.new
    expect(merchant_facade).to be_a(MerchantFacade)
  end

  it 'can return merchant attributes' do
    expect(MerchantFacade.get_merchants).to be_an(Array)
  end
end