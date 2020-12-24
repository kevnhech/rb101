# input: integer
# output: integer
# rules: write a method that takes a single integer as an argument and returns the next featured number that is greater than the argument

# Test case:
# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

def featured(number) # opens a method block
  number += 1 # increments the method's argument by 1
  number += 1 until number.odd? && number & 7 == 0 # opens a loop that increments the method's argument by 1. it will stop incrementing as soon as the argument is odd and it's divisible by 7

  loop do # opens a loop block
    number_chars = number.to_s.split('') # initializes variable `number_chars` that equals to the argument's conversion to an array, having sub arrays of every number
    return number if number_chars.uniq == number_chars # compares array `number_chars` with a modified version of variable `numbers_char` to see if they are equal. if they are, then the argument is returned
    number += 14 # increments the argument by 14
    break if number >= 9_876_543_210 # stops the loop once the argument is greater than or equal to value `9876543210`
  end # closes the loop block

  'There is no possible number that fulfills those requirements' # returns this string once the argument is greater than or equal to value `9876543210`
end # closes the method block