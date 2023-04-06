require 'rails_helper'

RSpec.describe 'Merchants Show Page' do

  it 'displays a merchants attributes' do
    visit merchant_path(1)

    expect(page).to have_content('Schroeder-Jerde')
    expect(page).to have_content('Item Nemo Facere')
    expect(page).to have_content('Item Expedita Aliquam')
    expect(page).to have_content('Item Provident At')
  end
end