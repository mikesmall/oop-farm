require_relative 'farm.rb'

class Crop
  attr_reader :crop_type, :field_hectares, :food_per_hectare
  def initialize(crop_type, crop_hectares, food_per_hectare)
    @crop_type = crop_type
    @crop_hectares = field_hectares
    @food_per_hectare = food_per_hectare
  end#initialize
end#Crop

corn = Crop.new("corn", 5, 20)

wheat = Crop.new("wheat", 7, 30)
