require 'rails_helper'

RSpec.describe 'Food Facade' do
  it 'returns an array of foods' do
    foods = FoodFacade.get_foods_with_ingredient('beef')
    expect(foods).to be_an(Array)
  end
end
