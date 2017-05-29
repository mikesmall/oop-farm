class Crop

  attr_reader :crop_type, :field_hectares, :food_per_hectare

  def initialize(crop_type, crop_hectares, food_per_hectare)
    @crop_type = crop_type
    @crop_hectares = field_hectares
    @food_per_hectare = food_per_hectare
  end#initialize

  # Menu option 1 -- NEW FIELD
  def self.new_field
  end#self.new_field

  # Menu option 2 -- HARVEST
  def self.harvest
    #  When you harvest, you must collect food from every one of your fields and record how much total food you have collected. It should display all of this information.
  end#self.harvest

  # Menu option 3 -- STATUS
  def self.status
    # You can also check the status of each field, which is a more direct way of observing the status of your fields (their size and type). It should also tell you how much total food you have produced up until this point.
  end#self.status

  # Menu option 4 -- RELAX
  def self.relax
    # Sometimes a farmer wants to relax. In doing so, you will get a chance to enjoy the beauty of each one of your fields (without harvesting them).
  end#self.relax

  # Menu option 5 -- EXIT
  # No additional code needed here.

  



end#Crop
