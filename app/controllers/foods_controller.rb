class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.get_foods_with_ingredient(params[:q])
  end
end
