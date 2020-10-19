class Food

  attr_reader :fdc_id, :gtin_upc, :description, :brand_owner, :ingredients

  def initialize(attributes)
    @fdc_id = attributes[:fdcId]
    @gtin_upc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
