# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase

# initialize `arr` and assign it to the following:
# iterate over each word in the string
#   invoke a method on each element that will capitalize them all
# end the block
# return `arr` with each element joined

def word_cap(string)
  arr = string.split.each do |words|
    words.capitalize!
  end
  arr.join(" ")
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'