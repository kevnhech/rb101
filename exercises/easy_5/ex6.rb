# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# input: string
# output: a hash with keys that collect the length of a substring, and values that collect how many of those substrings exist
# rules: words consist of any string of characters that do not include a space

# initialize empty hash `count`
# split the string into an array, then iterate over each element
#   assign the length of each elemenet as a key for `count` to the amount of strings that exist wtih the same length
# close the block
# return `count`

def word_sizes(string)
  count = Hash.new(0)
  string.split.each do |str|
    count[str.length] += 1
  end
  count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}