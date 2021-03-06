require 'pry'
require_relative 'field.rb'

class LetsFarm

  def initialize(crop_type)
    @crop_type = crop_type # This is to name the variables.
  end#initialize

  def menu
    while true # repeat indefinitely
      print_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end#while
  end#menu

  def print_menu
    puts '-----------------------------------------------------------'
    puts '[1] Field ----- adds a new field'
    puts '[2] Harvest --- harvests crops and adds to total harvested'
    puts '[3] Status ---- displays some information about the farm'
    puts '[4] Relax ----- provides lovely descriptions of your fields'
    puts '[5] Exit ------ exits this program'
    puts '-----------------------------------------------------------'
    puts 'Pick a number: '
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

  # Menu option 1
  def new_field
    # You can add fields of choice to your farm by specifying their type (eg. "corn") and their total area in hectares (eg. 100).
    print 'What type of crop? '
    crop_type = gets.chomp
    print 'How many hectares? '
    crop_hectares = gets.to_i
    #binding.pry
    print 'How much food will it produce per hectare? '
    food_per_hectare = gets.to_i
    Crop.new_field(crop_type, crop_hectares, food_per_hectare)
  end#new_field

  # Menu option 2
  def harvest
    # When you harvest, you must collect food from every one of your fields and record how much total food you have collected. It should display all of this information.
    # (Harvest Crops + Add to total harvested)
    Crop.harvest
  end#harvest

  # Menu option 3
  def status
    # You can also check the status of each field, which is a more direct way of observing the status of your fields (their size and type). It should also tell you how much total food you have produced up until this point.
    Crop.status
  end#status

  # Menu option 4
  def relax
    # Sometimes a farmer wants to relax. In doing so, you will get a chance to enjoy the beauty of each one of your fields (without harvesting them).
    Crop.relax
  end#relax

  # Menu option 5
  def exit_program
    abort('Exiting...')
  end#exit_program

end#LetsFarm

# Test Input/Output:
a_farm_app = LetsFarm.new(@crop_type)
a_farm_app. menu
