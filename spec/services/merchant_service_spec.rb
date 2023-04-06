require 'rails_helper'

RSpec.describe MerchantService do
  before :each do
    merchants_response = File.read('spec/fixtures/merchants.json')
    stub_request(:get, "http://localhost:3000/api/v1/merchants")
      .to_return(status: 200, body: merchants_response)
  end

  it 'returns a list of merchants' do
    merchants = MerchantService.get_merchants
  end
end