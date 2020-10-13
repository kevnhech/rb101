# The expression n if n.even? returns the integer n when it is even, and returns nil if it is odd
# We can change the method to .select as .filter is an alias for .select

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n| # Change numbers.map to numbers.select
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]