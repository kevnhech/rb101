# Write a method that takes a string, and returns a new string in which every consonant character is doubled

# input: string
# output: string
# rules: vowels, digits, punctuation, and whitespaces should not be doubled

# initialize empty string `str`
# iterate over each character in the input string
#   append the result of a character multiplied by `2` to `str` if the character is a consonant
# end the block
# return `str`

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  str = ''

  string.each_char do |char|
    if CONSONANTS.any?(char.downcase)
      str << char * 2
    else
      str << char
    end
  end

  str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""