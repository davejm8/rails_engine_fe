require 'rails_helper'
require './app/poros/merchant'
require './app/services/merchant_service'

RSpec.describe Merchant do
  let!(:info) { {id: "1", attributes: {name: "Schroeder-Jerde"}} }
  let!(:merchant) { Merchant.new(info) }

  it 'exists and has attributes' do
    expect(merchant).to be_a(Merchant)
    expect(merchant.name).to eq("Schroeder-Jerde")
    expect(merchant.id).to eq("1")
  end
end