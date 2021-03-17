# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# iterate through integers 1 to 99
#   output an integer if it is an even number
# end the block

1.upto(99) do |num|
  puts num if num.even?
end