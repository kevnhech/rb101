# In this exercise, you will write a function named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

# input: two arguments that return a boolean
# output: booleans
# rules: one argument has to return true and the other has to turn false in order for the method to output true, false otherwise

# invoke an if/else statement
#   output `true` if one argument returns `true` and the other outputs `false`
#   output `false` if both arguments output either `true` or `false`
# close the block

def xor?(arg1, arg2)
  if (arg1 == true && arg2 == false) || (arg1 == false && arg2 == true)
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false