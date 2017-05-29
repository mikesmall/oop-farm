class Crop
  attr_reader :crop_type, :field_hectares, :food_per_hectare
  def initialize(crop_type, crop_hectares, food_per_hectare)
    @crop_type = crop_type
    @crop_hectares = field_hectares
    @food_per_hectare = food_per_hectare
  end#initialize

  def harvest
    #  When you harvest, you must collect food from every one of your fields and record how much total food you have collected. It should display all of this information.
  end#harvest
end#Crop
