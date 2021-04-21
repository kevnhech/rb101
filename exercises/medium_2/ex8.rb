# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument

# initialize `number` and assign it to the input
# invoke a loop
#   break if `number` does not equate to the input AND `number` is odd AND `number` is divisible by `7` AND does not have a repeating digit
#   increment `number` by `1`
# end the block
# return `number`

def featured(integer)
  num = integer + 1

  if num.to_s.size >= 10
    return "There is no possible number that fulfills those requirements"
  end

  until num % 7 == 0 && num.odd? && num.to_s.chars.uniq.size == num.to_s.size
    num += 1
  end
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements