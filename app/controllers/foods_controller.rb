class FoodsController < ApplicationController
  def index
    response = Faraday.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=IIjLSr74YiPgWgXZ83XRmP5RFtmf0Kqei4dgvSeo&query=#{params[:q]}&pageSize=10")
    json = JSON.parse(response.body, symbolize_names: true)
    @foods = json[:foods]
  end
end
