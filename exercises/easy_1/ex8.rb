def average(arr)
  arr.sum / arr.length
end

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

=begin

def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number.to_f }
  sum / numbers.count
end

=end