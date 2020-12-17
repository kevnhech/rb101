# input: string
# output: string
# rules: the output will return a new string in which every character is doubled

# Algorithm:
#   repeater method
#     - create a new variable `arr` that will be an empty array
#     - start a loop that iterates through every character in the string
#       - multiply every character by 2 then insert the result inside variable `arr`
#     - close the outer loop
#     - return variable `arr` converted in string format

def repeater(string)
  arr = []

  string.chars.each do |char|
    arr << char * 2
  end

  arr.join
end
