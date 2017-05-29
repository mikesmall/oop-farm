require_relative 'field.rb'

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

# Menu option 1
def new_field
  # You can add fields of choice to your farm by specifying their type (eg. "corn") and their total area in hectares (eg. 100).
end#new_field

# Menu option 2
def harvest
  # When you harvest, you must collect food from every one of your fields and record how much total food you have collected. It should display all of this information.
end#harvest

# Menu option 3
def status
  # You can also check the status of each field, which is a more direct way of observing the status of your fields (their size and type). It should also tell you how much total food you have produced up until this point.
end#status

# Menu option 4
def relax
  # Sometimes a farmer wants to relax. In doing so, you will get a chance to enjoy the beauty of each one of your fields (without harvesting them).
end#relax

# Menu option 5
def exit_program
  abort('Exiting...')
end

# Test Input/Output:
corn = Crop.new("corn", 5, 20)
wheat = Crop.new("wheat", 7, 30)
