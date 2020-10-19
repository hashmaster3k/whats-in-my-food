require 'rails_helper'

RSpec.describe 'Food Service' do
  it 'returns json of food data' do
    food_results = FoodService.search_by_ingredient('beef')

    expect(food_results).to be_a(Hash)
    expect(food_results).to have_key(:foods)

    foods = food_results[:foods]
    expect(foods).to be_an(Array)

    first_food = foods.first

    expect(first_food).to have_key(:gtinUpc)
    expect(first_food[:gtinUpc]).to be_a(String)

    expect(first_food).to have_key(:description)
    expect(first_food[:description]).to be_a(String)

    expect(first_food).to have_key(:brandOwner)
    expect(first_food[:brandOwner]).to be_a(String)

    expect(first_food).to have_key(:ingredients)
    expect(first_food[:ingredients]).to be_a(String)
  end
end
