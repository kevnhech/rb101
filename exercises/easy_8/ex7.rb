# Write a method that takes a string, and returns a new string in which every character is doubled.

# input: string
# output: string

# initialize empty string `str`
# iterate over each character in the string
#   append the result of the character multiplied by `2` to `str`
# end the block
# return `str`

def repeater(string)
  str = ''
  string.chars.each do |char|
    str << char * 2
  end
  str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''