# Build a program that displays when the user will retire and how many years she has to work till retirement.

# ask the user their age
# ask the user what age they would like to retire
# inform the user the current year, then inform them when they will retire by adding the current year plus the subtraction of the user age and when they want to retire
# inform the user how many years they have by subtracting the user age and the age they wish to retire

print "What is your age? "
age = gets.to_i
print "At what age would you like to retire? "
retired_age = gets.to_i
year = Time.new.year

puts "It's #{year}. You will retire in #{year + (retired_age - age)}."
puts "You have only #{retired_age - age} years of work to go!"