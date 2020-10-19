require 'rails_helper'

RSpec.describe 'FOODS INDEX PAGE' do
  it 'fills form, submit and hits correct path' do
    visit root_path

    fill_in :q, with: 'test'
    click_button 'Search'

    expect(current_path).to eq('/foods')
  end
end
