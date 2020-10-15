def cheese_and_crackers(cheese_count, boxes_of_crackers) # opens a mini-script block defining function variable cheese_and_crackers then giving it two arguments
  puts "You have #{cheese_count} cheeses!" # prints a string and a string interpolation to the console. "You have # cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!" # prints a string and a string interpolation to the console. "You have # boxes of crackers!"
  puts "Man that's enough for a party!" # prints a string to the console
  puts "Get a blanket.\n" # prints to the console "Get a blanket." following a new line.
end # closes the mini-script


puts "We can just give the function numbers directly:" # prints a sentence to the console
cheese_and_crackers(20, 30) # prints the mini-script to the console, but this time instead of printing "You have # cheeses! You have # boxes of crackers!" it prints out "You have 20 cheeses! You have 30 boxes of crackers!" because we are calling the function and passing numbers 20 and 30 to the variable cheese_and_crackers


puts "OR, we can use variables from our script:" # prints a sentence to the console
amount_of_cheese = 10 # assigns an integer to a local variable
amount_of_crackers = 50 # assigns an integer to a local variable

cheese_and_crackers(amount_of_cheese, amount_of_crackers) # calls function cheese_and_crackers with arguments amount_of_cheese and amount_of_crackers. 


puts "We can even do math inside too:" # prints a sentence to the console
cheese_and_crackers(10 + 20, 5 + 6) # calls function cheese_and_crackers with the sum of the arguments 10 + 20 and 5 + 6


puts "And we can combine the two, variables and math:" # prints a sentence to the console
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000) # calls function cheese_and_crackers and its arguments with the sum of variable amount_of_cheese + 100 and amount_of_crackers + 1000

# study drill

def wins_and_losses(wins, loss)
  puts "You have #{wins} number of wins in the tournament!"
  puts "You have #{loss} number of losses in the tournament..."
end

puts "-" * 20
wins_and_losses(2, 2)
puts "-" * 20

wins_and_losses(1 + 1, 1 + 1 * 1 / 1)
puts "-" * 20

wins = 2
losses = 2
wins_and_losses(wins, losses)
puts "-" * 20

wins_and_losses(wins / 1, losses / 1)
puts "-" * 20

wins_and_losses("AAA".length - 1, "AAAAAA".length - 4)
puts "-" * 20

wins_and_losses(wins.to_s, losses.to_s)
puts "-" * 20

wins_and_losses(wins.to_f, losses.to_f)
puts "-" * 20

puts wins_and_losses(2, 2)
puts "-" * 20

print wins_and_losses(2, 2)
puts "-" * 20

filename = ARGV.first
txt = open(filename)
wins_and_losses(txt.read, 2)
txt.close()
puts "-" * 20