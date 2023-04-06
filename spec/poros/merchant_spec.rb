require 'rails_helper'
require './app/poros/merchant'
require './app/services/merchant_service'

RSpec.describe Merchant do
  before :each do
    merchants_response = File.read('spec/fixtures/merchants.json')
    stub_request(:get, "http://localhost:3000/api/v1/merchants")
      .to_return(status: 200, body: merchants_response)

      @merchant = Merchant.new(JSON.parse(merchants_response, symbolize_names: true)[:data].first)
  end

  it 'exists and has attributes' do
    expect(@merchant).to be_a(Merchant)
    expect(@merchant.name).to eq("Schroeder-Jerde")
    expect(@merchant.id).to eq("1")
  end
end