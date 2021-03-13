# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# input: string
# output: reversed string if the length is five or more
# rules: each string will consist of only letters and spaces
#        spaces should be included only when more than one word is present

# convert the string into an array then iterate over each substring
#   reverse the substring if its length is greater than or equal to five
# end the block
# convert the array into a string

def reverse_words(string)
  reverse = string.split.map do |str|
    if str.length >= 5
      str.reverse
    else
      str
    end
  end
  reverse.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS