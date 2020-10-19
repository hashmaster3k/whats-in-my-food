class FoodFacade
  def self.get_foods_with_ingredient(ingredient)
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['FOOD_API_KEY']}&query=#{ingredient}&pageSize=10")
    json = JSON.parse(response.body, symbolize_names: true)
    json[:foods]
  end
end
