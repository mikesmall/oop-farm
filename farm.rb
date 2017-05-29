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
end#new_field

# Menu option 2
def harvest
end#harvest

# Menu option 3
def status
end#status

# Menu option 4
def relax
end#relax

# Menu option 5
def exit_program
  abort('Exiting...')
end

# Test Input/Output:
corn = Crop.new("corn", 5, 20)
wheat = Crop.new("wheat", 7, 30)
