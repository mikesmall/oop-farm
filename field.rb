class Crop

  attr_reader :crop_type, :field_hectares, :food_per_hectare

  @@fields = []

  def initialize(crop_type, crop_hectares, food_per_hectare)
    @crop_type = crop_type
    @crop_hectares = field_hectares
    @food_per_hectare = food_per_hectare
    @total_harvested = 0
  end#initialize

  # Menu option 1 -- NEW FIELD
  def self.new_field(crop_type, field_hectares, food_per_hectare)
    new_field = Crop.new(crop_type, field_hectares, food_per_hectare)
    @@fields << new_field
    return new_field
  end#self.new_field

  # Menu option 2 -- HARVEST
  def self.harvest
    #  When you harvest, you must collect food from every one of your fields and record how much total food you have collected. It should display all of this information.
    # (Harvest Crops + Add to total harvested)
    @@fields.each do |collected_food|
      collected_food == @crop_hectares * @food_per_hectare
      puts "Today's harvest from #{ self } = #{ collected_food }."
      @total_harvested == @total_harvested + collected_food
      puts "All-time total #{ self }harvest = #{ @total_harvested }."
    end#each
  end#self.harvest

  # Menu option 3 -- STATUS
  def self.status
    # You can also check the status of each field, which is a more direct way of observing the status of your fields (their size and type).
    @@fields.each do
      puts "Crop type: #{ @crop_type }"
      puts "Field size: #{ @crop_hectares } hectares"
      puts "Food per hectare: #{ @food_per_hectare }"
      # It should also tell you how much total food you have produced up until this point.
      puts "Total #{ self } harvest so far: #{ @total_harvested }."
      puts "----------------------------------------------"
    end#each
  end#self.status

  # Menu option 4 -- RELAX
  def self.relax
    # Sometimes a farmer wants to relax. In doing so, you will get a chance to enjoy the beauty of each one of your fields (without harvesting them).
    @@fields.each do
      puts "That #{ @crop_type } looks delicious!"
      puts "All #{ @crop_hectares } of it!"
    end#each
  end#self.relax

  # Menu option 5 -- EXIT
  # No EXIT code required here.

end#Crop
