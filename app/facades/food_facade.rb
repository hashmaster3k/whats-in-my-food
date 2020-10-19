class FoodFacade
  def self.get_foods_with_ingredient(ingredient)
    json = FoodService.search_by_ingredient(ingredient)
    json[:foods]
  end
end
