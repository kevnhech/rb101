# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is

# input: integer
# output: integer
# rules: double numbers should be returned as is
#        integers with odd digits can't be double numbers
#        multiply the input integer by `2` if it is not a double number

# comparison method
# =================
# initialize `half` and assign it to the digit length of the integer divided by 2
# compare the first half of the input with the second half to see if they equate

# twice method
# ============
# invoke an if/else statement
#   return the input integer if the comparison method returns `true`
#   return the product of the input integer times `2` if the comparison method returns `false`

def comparison(integer)
  half = integer.to_s.length / 2
  integer.to_s[0..half - 1] == integer.to_s[half..-1]
end

def twice(integer)
  if comparison(integer) && integer.to_s.length.even?
    integer
  else
    integer * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10