require "rails_helper"

RSpec.describe Food do
  it "exists" do
    attributes = {gtinUpc: "123723782",
                  description: "Pepperoni",
                  brandOwner: "Salami Incorp",
                  ingredients: "Pepperoni, salt, etc."}

    food = Food.new(attributes)

    expect(food).to be_a(Food)
    expect(food.gtin_upc).to eq(attributes[:gtinUpc])
    expect(food.description).to eq(attributes[:description])
    expect(food.brand_owner).to eq(attributes[:brandOwner])
    expect(food.ingredients).to eq(attributes[:ingredients])
  end
end
