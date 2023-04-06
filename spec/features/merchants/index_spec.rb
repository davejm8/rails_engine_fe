require 'rails_helper'

# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name



# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.

RSpec.describe 'Merchants Index Page' do
  it 'displays a list of all merchants' do
    visit merchants_path

    expect(page).to have_content('Merchants')
    expect(page).to have_content('Schroeder-Jerde')
  end

  it 'displays a list of all merchants' do
    visit merchants_path

    click_link 'Schroeder-Jerde'

    expect(current_path).to eq(merchant_path(1))
  end
end