# input: two integers
# output: strings
# rules: print out all numbers between the two arguments except if a number is divisible by 3 print "Fizz" if a number is divisible by 5 print "Buzz" if a number is divisible by 3 and 5 print "FizzBuzz"

# Algorithm:
#   fizzbuzz method
#     - create variable `arr` that will be an empty array
#     - start a loop that will get a series of numbers from the first integer to the second, then iterate over them
#       - call an if/else statement that will insert string "Fizz" to variable `arr` if the number is divisible by 3, inserts string "Buzz" to variable `arr` if the number is divisible by 5, inserts string "FizzBuzz" to variable `arr` if the number is divisible by 3 and 5, or inserts the number to variable `arr`
#     - end the outer loop
#     - return variable `arr` in string format

def fizzbuzz(first_num, second_num)
  arr = []
  (first_num..second_num).each do |num|
    if num % 3 == 0 && num % 5 == 0
      arr << "FizzBuzz"
    elsif num % 3 == 0
      arr << "Fizz"
    elsif num % 5 == 0
      arr << "Buzz"
    else
      arr << num
    end
  end

  arr.join(", ")
end