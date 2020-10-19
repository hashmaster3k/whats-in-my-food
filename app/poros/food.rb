class Food

  attr_reader :fdc_id, :description

  def initialize(attributes)
    @fdc_id = attributes[:fdcId]
    @gtin_upc = attributes[:gtinUpc]
    @description = attributes[:description]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end

  def gtin_upc
    return 'Not available' if @gtin_upc == nil
    @gtin_upc
  end

  def ingredients
    return 'Not available' if @ingredients == nil
    @ingredients
  end

  def brand_owner
    return 'Not available' if @brand_owner == nil
    @brand_owner
  end
end
