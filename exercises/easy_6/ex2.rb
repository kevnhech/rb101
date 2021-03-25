# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# input: array of strings
# output: array of the same string values except with the vowels removed

# iterate over the array
#   delete a character if it is a vowel
# end the block

def remove_vowels(array)
  array.map do |str|
    str.delete("aeiouAEIOU")
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']