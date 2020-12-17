# input: string
# output: new string
# rules: every consonant character is doubled. vowels, digits, punctuation, and whitespace should not be doubled

# Algorithm:
#   - initialize a CONSONANTS variable that will contain consonants
#   - initialize a result variable to an empty string
#   - loop through the characters in the arguments string
#   - if the character is a consonant, append it to the result string twice
#   - if the character is not a consonant, append it to the result string once
#   - return the result string

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z)

def double_consonants(string)
  result = ''
  string.chars.each do |char|
    if CONSONANTS.include?(char)
      result << char * 2
    else
      result << char
    end
  end
  result
end