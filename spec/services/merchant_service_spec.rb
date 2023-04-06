require 'rails_helper'

RSpec.describe MerchantService do
  before :each do
    merchants_response = File.read('spec/fixtures/merchants.json')
    stub_request(:get, "http://localhost:3000/api/v1/merchants")
      .to_return(status: 200, body: merchants_response)
  end

  it 'returns a list of merchants' do
    merchants = MerchantService.get_merchants

    expect(merchants).to be_a(Hash)
    expect(merchants[:data]).to be_an(Array)
    expect(merchants[:data].count).to eq(100)
    expect(merchants[:data][0][:id]).to eq("1")
    expect(merchants[:data][0][:attributes][:name]).to eq("Schroeder-Jerde")
  end
end