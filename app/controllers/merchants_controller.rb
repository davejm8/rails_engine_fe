class MerchantsController < ApplicationController
  def index
    response = Faraday.get('http://localhost:3000/api/v1/merchants')
    @merchants = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def show
    merchant_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}")
    @merchant = JSON.parse(merchant_response.body, symbolize_names: true)[:data]

    items_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}/items")
    @items = JSON.parse(items_response.body, symbolize_names: true)[:data]
  end
end