# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# ask the user for the bill
# ask the user for the tip percentage
# enter a mathematical equation that returns 15 percent of the bill
# enter a mathematical equation that returns the bill and the tip

print "What is the bill? "
bill = gets.to_f
print "What is the tip percentage? "
tip_percentage = gets.to_f
tip = (tip_percentage / 100) * bill
total = tip + bill

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", total)}"