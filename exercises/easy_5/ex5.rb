# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# input: string consisting of some words and an assortment of non-alphabetic characters
# output: string with all the non-alphabetic characters replaced by spaces
# rules: if one or more non-alphabetic characters occur in a row, it should only have one space in the result

# initialize variable `clean_string` and assign it to the following: split the string into an array with characters as its elements, then call the `#uniq` method on it
# iterate over every element in `clean_string`
#   assign each element to a space if it does not equal to an alphabetic character
# end the block
# return `clean_string` in string format

ALPHABET = ('a'..'z').to_a

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

p cleanup("---what's my +*& line?") == ' what s my line '