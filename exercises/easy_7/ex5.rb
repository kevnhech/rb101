# input: string
# output: string (staggered capitalization scheme in which every other character is capitalized)
# rules: characters that are not letters should not be changed, but count as characters when switching between upper and lowercase

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end