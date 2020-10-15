i = 0
numbers = []
ten = 10
one = 1

(0..6).each do |x|
  puts "At the top i is #{x}"
  numbers.push(x)

  x += one
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{x}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }