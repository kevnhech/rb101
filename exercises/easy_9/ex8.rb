# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number

# input: two integers
# output: array
# rules: the count argument will always have a value of 0 or greater, while the starting number can be any integer value
#        if the count is 0, an empty list should be returned

# initialize empty array `arr`
# invoke a loop that will iterate x amount of times
#   increment y by itself, then append the return value to `arr`
# end the block
# return `arr`

def sequence(x, y)
  arr = []
  num = y

  x.times do
    arr << num
    num += y
  end

  arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []