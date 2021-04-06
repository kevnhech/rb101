# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

# return the negative of the input number by putting a minus sign behind it

def negative(integer)
  if integer > 0
    -integer
  else
    integer
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby