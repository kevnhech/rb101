# input: string
# output: string with reversed uppercase and lowercase for every character
# rules: String#swapcase is forbidden

# Algorithm:
#   swapcase method
#     - start a loop that iterates over every character on the string. variable `str` will equal this result
#       - change the character to an uppercase if it is lowercase and vice versa by calling a method for each character
#     - end the outer loop
#     - return `str`

def swapcase(string)
  str = string.chars.map do |char|
    if char == char.upcase
      char.downcase
    elsif char == char.downcase
      char.upcase
    end
  end
  str.join
end
