print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement = gets.chomp.to_i

current_year = Time.now.year
retirement_year = current_year + (retirement - age)
years_left = retirement_year - current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_left} years of work to go!"