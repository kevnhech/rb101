# input: arrays
# output: arrays
# rules: return the same array with no vowels

# Algorithm:
#   remove_vowels method
#   ====================
#     - start a loop for `argument` that will iterate through every string in the array
#       - delete every vowel within the array
#     - close the outer loop

def remove_vowels(array)
  array.each do |string|
    string.delete!("aeiouAEIOU")
  end
end