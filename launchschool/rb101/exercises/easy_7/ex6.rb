# input: string
# output: string (staggered capitalization scheme in which every other character is capitalized except for non-alphabetic characters)
# rules: the non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case 

def staggered_case(string)
  alphabet = ("A".."z").to_a
  result = ''
  need_upper = true
  string.chars.each do |char|
    if alphabet.include?(char)
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end