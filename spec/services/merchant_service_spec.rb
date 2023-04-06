require 'rails_helper'

RSpec.describe MerchantService do

  it 'returns a list of merchants' do
    merchants = MerchantService.get_merchants

    expect(merchants).to be_a Hash
    expect(merchants[:data]).to be_an Array
    expect(merchants[:data][0][:id]).to be_a String
    expect(merchants[:data][0][:type]).to be_a String
    expect(merchants[:data][0][:attributes]).to be_a Hash
    expect(merchants[:data][0][:attributes][:name]).to be_a String
  end
end