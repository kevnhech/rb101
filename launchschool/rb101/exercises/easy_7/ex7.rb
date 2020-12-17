# input: array of integers
# output: float
# rules: array is non-empty

# Algorithm:
#   show_multiplicative_average method
#     - multiply every number in the array by calling the inject method in the array, divide the result by the number of entries in the array, then assign the result to variable `result`
#     - print variable `result` rounded to 3 decimal places by calling the `round` method

def show_multiplicative_average(array)
  array.map! do |num|
    num.to_f
  end
  result = (array.inject(:*)) / array.size
  puts "The result is #{format('%.3f', result)}"
end