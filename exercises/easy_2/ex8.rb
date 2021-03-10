=begin

puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
method = gets.chomp

if method.include? "s"
  puts "The sum of the integers between 1 and #{integer} is #{(1..integer).sum}."
elsif method.include? "p"
  puts "The product of the integers between 1 and #{integer} is #{(1..integer).to_a.reduce(:*)}."
else
  puts "Error. You've entered an input other than 's' and 'p'. Please try again."
end

=end

def compute_sum(number)
  (1..number).inject { |sum, total| sum + total }
end

def compute_product(number)
  (1..number).inject { |sum, total| sum * total }
end

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end