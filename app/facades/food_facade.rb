class FoodFacade
  def self.get_foods_with_ingredient(ingredient)
    json = FoodService.search_by_ingredient(ingredient)
    json[:foods].map {|food_attributes| Food.new(food_attributes)}
  end
end
