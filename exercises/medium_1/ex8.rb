# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method

# input: integer
# output: integer
# rules: output `1` if n equates to `1`

# initialize `f0` and assign it to integer `0`
# initialize `f1` and assign it to integer `1`
# initialize `f2` and assign it to `0`
# initialize `count` and assign it to `0`
# invoke a loop
#   break if `count` equates to the input
#   reassign `f2` to the sum of `f0` and `f1`
#   increment `f0` by `1`
#   increment `f1` by `1`
#   increment `count` by `1`
# end the block
# return `f2`

def fibonacci(number)
  return 1 if number <= 2
  fibonacci(number - 1) + fibonacci(number - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765