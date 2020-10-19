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

  it 'displays relevant information' do
    within(first('.food')) do
      expect(page).to have_css('.id')
      id = find('.id').text
      expect(id).to_not be_empty

      expect(page).to have_css('.description')
      description = find('.description').text
      expect(description).to_not be_empty

      expect(page).to have_css('.owner')
      owner = find('.owner').text
      expect(owner).to_not be_empty

      expect(page).to have_css('.ingredients')
      ingredients = find('.ingredients').text
      expect(ingredients).to_not be_empty
    end
  end
 end
