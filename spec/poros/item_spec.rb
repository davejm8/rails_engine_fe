require 'rails_helper'
require './app/poros/item'
require './app/services/merchant_service'

RSpec.describe Item do
  let!(:info)  {{:id=>"4",
  :type=>"item",
  :attributes=>
   {:name=>"Item Nemo Facere",
    :description=>
     "Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.",
    :unit_price=>42.91,
    :merchant_id=>1}}
  }
  let!(:item) { Item.new(info) }

  it 'exists and has attributes' do
    expect(item).to be_a(Item)
    expect(item.name).to eq("Item Nemo Facere")
    expect(item.description).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
    expect(item.unit_price).to eq(42.91)
  end
end