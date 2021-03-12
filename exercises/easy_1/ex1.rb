# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# repeat('Hello', 3)
# Outputs: `Hello`, `Hello`, `Hello`

# input: a string and an integer
# output: a string that is returned `integer` times
# rules: the `repeat` method takes two arguments: a string and a positive integer
#        the method prints the string as many times as the integer indicates

# initialize local variable `count` and assign it to integer `0`
# invoke method `loop`
#   return the string
#   increment `count` by 1
#   stop the loop once `count` equals to the integer

def repeat(str, num)
  count = 0
  loop do
    puts str
    count += 1
    break if count == num
  end
end

repeat('Hello', 3)