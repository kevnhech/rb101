# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# input: any integer
# output: booleans true or false
# rules: returns `true` if the number's absolute value is odd, false otherwise

# Compare the result of integer modulo `2` with integer `1` to see if it's odd or not

def is_odd?(num)
  num % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# Further Exploration

# If you weren't certain whether % were the modulo or remainder operator, how would you rewrite #is_odd? so it worked regardless?

# Call method `#remainder` on integer, passing in `2` as an argument, then compare the return value to integer `1`

def is_odd?(num)
  num.remainder(2) == 1 || num.remainder(2) == -1
end