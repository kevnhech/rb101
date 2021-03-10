# input: string
# output: hash of integers with a key and a value
# rules: words consist of the alphabet and do not include a space 
#
# Algorithm:
#   - create a constant called `ALPHABET` that will be an array that contains the entire alphabet and the space character
#
#   cleanup method
#   ==============
#     - create an empty array called `new_string`
#     - iterate over every character in the argument
#       - shove a character inside the `new_string` array if that character is included in the `ALPHABET` array
#     - close outer loop
#     - have every character in the `new_string` array join, then return variable `new_string`
#
#   word_sizes method
#   =================
#     - create an empty hash called `size`
#     - convert the argument to an array then iterate over each string in the argument
#       - shove the length of each word in the array, then increment them by 1
#     - end outer loop
#     - return the `size` variable

ALPHABET = ("A".."z").to_a
ALPHABET << " "

def cleanup(string)
  new_string = []
  string.chars.each do |letter|
    if ALPHABET.include?(letter)
      new_string << letter
    end
  end
  new_string.join
end


def word_sizes(new_string)
  size = Hash.new(0)
  cleanup(new_string).split.each do |word|
    size[word.length] += 1
  end
  size
end