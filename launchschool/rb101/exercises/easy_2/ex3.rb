print "What is the bill? "
bill = gets.chomp.to_i

print "What is the tip percentage? "
tip_percent = gets.chomp.to_f

tip = (tip_percent / 100) * bill
total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"