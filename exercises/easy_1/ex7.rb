# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# input: positive integer
# output: a string of alternating 1s and 0s, always starting with 1
# rules: the length of the string should match the given integer

# initialize variable `binary` and assign it to an empty string
# invoke a loop
#   append string `10` to `binary`
#   break out of the loop once the length of `binary` is equal to the integer
# end the loop
# return `binary`

def stringy(number)
  binary = ''
  loop do
    binary << '1'
    break if binary.length == number
    binary << '0'
    break if binary.length == number
  end
  binary
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further exploration

def stringy(number)
  binary = ''
  loop do
    binary << '0'
    break if binary.length == number
    binary << '1'
    break if binary.length == number
  end
  binary
end

puts stringy(6) == '010101'
puts stringy(9) == '010101010'
puts stringy(4) == '0101'
puts stringy(7) == '0101010'