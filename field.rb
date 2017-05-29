require_relative 'farm.rb'

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

# What the menu should be:
# field -> adds a new field
# harvest -> harvests crops and adds to total harvested
# status -> displays some information about the farm
# relax -> provides lovely descriptions of your fields
# exit -> exits the program
def menu
  while true # repeat indefinitely
    print_main_menu
    user_selected = gets.to_i
    call_option(user_selected)
  end#while
end#menu

def print_menu
  puts '[1] Field'
  puts '[2] Harvest'
  puts '[3] Status'
  puts '[4] Relax'
  puts '[5] Exit'
  puts 'Enter a number: '
end#print_menu

def call_option(user_selected)
    case user_selected
      when 1 then new_field
      when 2 then harvest
      when 3 then status
      when 4 then relax
      when 5 then exit_program
    end#case
  end#call_option

def exit_program
  abort('Exiting...')
end

# Test Input/Output:
corn = Crop.new("corn", 5, 20)
wheat = Crop.new("wheat", 7, 30)
