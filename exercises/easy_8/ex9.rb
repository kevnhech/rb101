# Write a method that takes a positive integer as an argument and returns that number with its digits reversed

# input: integer
# output: integer
# rules: the return value should have no leading zeroes

# initialize `digits` and assign it to the input integer in string and reversed form
# delete `0` from `digits` if the last number equates to `0`
# return `digits` as an integer

def reversed_number(integer)
  digits = integer.to_s.reverse
  digits.delete('0') if digits[-1] == '0'
  digits.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1