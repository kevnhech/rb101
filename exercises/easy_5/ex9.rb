# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character

# input: string
# output: new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character
# rules: String#squeeze and String#squeeze! are forbidden

# initialize empty string `string`
# initialize `idx` and assign it to 1
# invoke a loop
#   break out of the loop once `idx` is over the length of the string
#   append a string to `string` if a character from the string is not equal to the string that is ahead of itself
#   increment `idx` by `1`
# end the block
# return `string`

def crunch(string)
  str = ''
  idx = 0
  count = 1
  loop do
    break if count > string.length
    str << string[idx] if string[idx] != string[count]
    idx += 1
    count += 1
  end
  str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''