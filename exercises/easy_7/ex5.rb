# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase

# input: string
# output: string with every other character capitalized
# rules: characters that are not letters should not be changed but count as characters when switching between upper and lowercase

# initialize empty string `str`
# iterate over each character in the input
#   append the uppercase version of a character to `str` if the characters index position is even
#   append the lowercase version of a character to `str` if the characters index position is odd
# end the block
# return `str`

def staggered_case(string)
  str = ''

  string.chars.each_with_index do |char, idx|
    str << char.upcase if idx.even?
    str << char.downcase if idx.odd?
  end

  str
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'