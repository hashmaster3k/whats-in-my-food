require 'rails_helper'

RSpec.describe 'Food Facade' do
  it 'returns an array of foods' do
    foods = FoodFacade.get_foods_with_ingredient('beef')
    expect(foods).to be_an(Array)
    expect(foods.first).to be_an(Food)
    expect(foods.first.gtin_upc).to be_a(String)
    expect(foods.first.description).to be_a(String)
    expect(foods.first.brand_owner).to be_a(String)
    expect(foods.first.ingredients).to be_a(String)
  end
end
