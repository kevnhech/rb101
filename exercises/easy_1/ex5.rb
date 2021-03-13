# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# input: a string
# output: a new string with the words in reverse order
# rules: the order of the words must be reversed

# convert the string into an array, separate each substring, and reverse the array

def reverse_sentence(string)
  string.split.reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'