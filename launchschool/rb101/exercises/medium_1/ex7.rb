# input: string
# output: string with any sequence of the words zero to nine converted to a string of digits
# rules: the digits will be strings, not integers

# Algorithm:
#   word_to_digit method
#   ====================
#     - convert the argument to an array, iterate over every sub argument then assign the result to variable `result`
#       - initialize a case statement where strings `zero` to `nine` will equal to strings `0` to `9`
#     - close the outer loop
#     - return variable `result` in string form

def word_to_digit(string)
  result = string.split.map do |num|
    case num
    when "zero" then "0"
    when "one" then "1"
    when "two" then "2"
    when "three" then "3"
    when "four." then "4."
    when "five" then "5"
    when "six" then "6"
    when "seven" then "7"
    when "eight" then "8"
    when "nine" then "9"
    else num
    end
  end
  result.join(' ')
end