# input: string
# output: hash of integers with a key and a value
# rules: words consist of any string of characters that do not include a space

# Algorithm:
#   word_sizes method
#   =================
#     - create an empty hash called `size`
#     - convert the argument to an array then iterate over each string in the argument
#       - increment 
#     - end outer loop
#     - return the `size` variable

def word_sizes(new_string)
  size = Hash.new(0)
  new_string.split.each do |word|
    size[word.length] += 1
  end
  size
end