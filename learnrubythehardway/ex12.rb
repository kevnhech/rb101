print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

# study drill

print "What would you like to order? "
order = gets.chomp
print "You said #{order} right? Give me your money. "
money = gets.chomp.to_f
print "You gave me $#{money}. Your change will be #{money*0.10}. Here you go!"