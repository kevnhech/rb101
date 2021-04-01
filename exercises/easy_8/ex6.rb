# Write a method that takes two arguments: the first is the starting number, and the second is the ending number

# input: two integers
# output: a list of numbers between the two numbers except if a number is divisible by 3, print `Fizz`, if a number is divisible by `5`, print `Buzz` and if a number is divisible by 3 and 5, print `FizzBuzz`

# from the first number up to the second number, do the following:
#   invoke an if/else statement
#     if a number is divisible by `3`, print `Fizz`
#     if a number is divisible by `5`, print `Buzz`
#     if a number is divisible by `3` and `5`, print `FizzBuzz`
#     else print the number
#   end the block
# end the block

def fizzbuzz(first_num, last_num)
  arr = []

  first_num.upto(last_num) do |num|
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

p fizzbuzz(1, 15) == "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"