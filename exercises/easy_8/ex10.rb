# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument

# input: string
# output: string
# rules: if the argument has an odd length, return one character
#        if the argument has an even length, return two characters

# initialize empty string `str`
# initialize `half_length` and assign it to the length of the input string divided by `2`
# invoke an if/else statement
#   if `half_length` equates to an even number, return the character in the middle of the input string using `half_length`
#   if `half_length` equates to an odd number, return both characters in the middle of the input string using the result of `half_length` minus `1` and `half_length`
# end the block
# return `str`

def center_of(string)
  str = ''
  half_length = string.length / 2

  str << string[half_length] if string.length.odd?
  str << string[half_length-1..half_length] if string.length.even?

  str
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'