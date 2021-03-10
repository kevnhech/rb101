# input: a string
# output: a sum of ASCII string values in integers
# rules: the ASCII string value is the sum of the ASCII values of every character in the string

# Algorithm:
#   ascii_value method
#   ==================
#     - create an empty variable called `value` that will contain the sum of the ASCII values of every character in the string
#     - split the argument into an array with each character separate
#     - start a loop that iterates over each character in the array
#       - increment the `value` variable by the ASCII value of each character in the array
#     - end the loop
#     - return the `value` variable

def ascii_value(string)
  value = 0
  string.split('').each do |char|
    value += char.ord
  end
  value
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0