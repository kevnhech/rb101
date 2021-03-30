# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version

# input: string
# output: swapcase version of input string
# rules: all characters should be unchanged
#        String#swapcase is forbidden

# initialize empty string `str`
# iterate over each character in the input string
#   invoke an if/else statement
#     if a character is lowercase, append the uppercase version to `str`
#     if a character is uppercase, append the lowercase version to `str`
#     if a character is both uppercase and lowercase, append it to `str`
#   end the block
# end the block
# return `str`

def swapcase(string)
  str = ''

  string.chars.each do |chars|
    str << chars.upcase if chars == chars.downcase && chars != chars.upcase
    str << chars.downcase if chars == chars.upcase && chars != chars.downcase
    str << chars if chars == chars.upcase && chars == chars.downcase
  end
  
  str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'