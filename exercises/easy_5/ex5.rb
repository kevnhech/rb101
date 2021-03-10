# input: string
# output: string (not the same object)
# rules: if one or more non-alphabetic characters occur in a row, leave one space in the result

# Algorithm:
#   - create an empty array called `alphabet` that will contain the entire alphabet in lowercase

#   cleanup method
#   ==============
#     - create an empty array called `new_string` that will contain the result of the cleanup method
#     - iterate over each letter in the argument
#       - shove a letter in array `new_string` if array `alphabet` has the same letter
#     - close the outer loop
#     - return the `new_string` array

ALPHABET = ("a".."z").to_a

def cleanup(string)
  new_string = []
  string.chars.each do |letter|
    if ALPHABET.include?(letter)
      new_string << letter
    else
      new_string << ' ' unless new_string.last == ' '
    end
  end
  new_string.join
end
