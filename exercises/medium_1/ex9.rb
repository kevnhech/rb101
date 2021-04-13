def fibonacci(number)
  arr = [0, 1]

  (number - 1).times do
    arr << arr[-1] + arr[-2]
    arr.shift
  end

  arr[-1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501