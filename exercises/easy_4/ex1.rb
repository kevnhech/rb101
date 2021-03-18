# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# input: two strings: one shorter than the other
# output: a new string that is ordered like so: shortest string, longest string, shorter string
# rules: both strings are of different lengths

# initialize string `str`
# invoke an if/else statement
#   if one string is bigger than the other, enter an equation where we get the desired output, then append the return value to `str`
# end the block
# return `str`

def short_long_short(str1, str2)
  str = ''
  if str1.length > str2.length
    str << str2 + str1 + str2
  elsif str1.length < str2.length
    str << str1 + str2 + str1
  else
    puts "Error."
  end
  str
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"