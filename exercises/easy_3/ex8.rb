# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# input: string
# output: boolean depending if the string is a palindrome or not
# rules: a palindrome reads the same forward and backward
#        case and characters matter

# compare the original string with the reversed version of itself

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Further Exploration

# compare the original array with the reversed version of itself

def palindrome?(array)
  array == array.reverse
end

palindrome?(['ab', 'ab']) == true

# compare the original input with the reverse version of itself

def palindrome?(collection)
  collection == collection.reverse
end

palindrome?(['ab', 'ab']) == true
palindrome?('22322') == true