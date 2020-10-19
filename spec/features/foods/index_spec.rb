require 'rails_helper'

RSpec.describe 'FOODS INDEX PAGE' do
  before :each do
    visit root_path

    fill_in :q, with: 'sweet potatoes'
    click_button 'Search'
  end

  it 'fills form, submit and hits correct path' do
    expect(current_path).to eq('/foods')
  end

  it 'returns 10 results' do
    expect(page).to have_content('Results returned: 10')
    expect(page).to have_css('.food', count: 10)
  end
end
