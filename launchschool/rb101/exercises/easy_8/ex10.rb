# input: string
# output: middle character of the string
# rules: if the argument has an odd length return exactly one character. if the argument has an even length return two characters

# Algorithm:
#   center_of method
#   ================
#     - initialize a new variable `middle_char` that will be an empty string
#     - call a method that outputs the length of the string, divide it by two, then initialize a new variable `index` that will equal the result
#     - insert one character from the string into variable `middle_char` by calling `index` to the argument if the argument has an odd length 
#     - insert two characters from the string into variable `middle_char` by using a range of numbers from position `index` - 1 to position `index` if the argument has an even length 

def center_of(string)
  middle_char = ''
  index = string.length / 2
  if string.length % 2 != 0
    middle_char << string[index]
  else
    middle_char << string[index - 1..index]
  end
end