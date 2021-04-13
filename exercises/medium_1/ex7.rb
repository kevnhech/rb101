# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits

# input: string
# output: string

# initialize empty string `str`
# initialize `idx` and assign it to integer `0`
# invoke a loop
#   if the argument equates to any number thats a word, append the digit version to `str`
#   otherwise, append the argument strings to `str`
# end the block

def word_to_digit(string)
  str = string.split.map do |word|
    case word
    when 'zero' then '0'
    when 'one' then '1'
    when 'two' then '2'
    when 'three' then '3'
    when 'four' then '4'
    when 'four.' then '4.'
    when 'five' then '5'
    when 'six' then '6'
    when 'seven' then '7'
    when 'eight' then '8'
    when 'nine' then '9'
    else word
    end
  end
  str.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'