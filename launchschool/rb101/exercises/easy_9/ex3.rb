# input: integer
# output: negative integer or zero
# rules: if the argument is a positive number return the negative of that number if the number is 0 or negative return the original number

# Algorithm:
#   negative method
#   ===============
#     - convert the integer to a string then assign the result to variable `new_integer`
#     - insert a dash to `new_integer` if the first character in the string does not equal a dash
#     - return the argument if it is a negative number or it equals to zero

def negative(integer)
  new_integer = integer.to_s
  if new_integer[0] != '-' && new_integer != "0"
    new_integer = '-' << new_integer
  end
  new_integer.to_i
end