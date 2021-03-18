# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# input: string
# output: booleans true if the input is a palindrome, false otherwise
# rules: the palindromes are case-insensitive
#        the palindromes ignore all non-alphanumeric characters

# initialize string `new_palindrome`
# iterate through each character in the string
#   append the character to `new_palindrome` if the character is a character from the alphabet
# end the block
# return the comparison of `new_palindrome` and the reversed version of itself in string formed

def real_palindrome?(string)
  new_palindrome = ''
  string.downcase.split('').each do |char|
    new_palindrome << char if ("a".."z").any?(char)
  end
  new_palindrome == new_palindrome.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
