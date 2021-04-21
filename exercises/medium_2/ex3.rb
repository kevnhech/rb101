# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# input: string
# output: hash
# rules: the string will always contain at least one character

# initialize empty hash `hsh`
# initialize `total` and assign it to the length of the input
# initialize `lowercase` and assign it to float `0.0`
# initialize `uppercase` and assign it to float `0.0`
# initialize `neither` and assign it to float `0.0`
# iterate over every character in the input
#   increment `lowercase` by `1` if a character is lowercased
#   incremenet `uppercase` by `1` if a character is uppercased
#   increment `neither` by `1` if a character is neither lowercase or uppercased
# end the block
# reassign `lowercase` to the equation (`lowercase` divided by `total`) multiplied by `100`
# reassign `uppercase` to the equation (`uppercase` divided by `total`) multiplied by `100`
# reassign `neither` to the equation (`neither` divided by `total`) multiplied by `100`
# assign a key in `hsh` to value `lowercase`
# assign a key in `hsh` to value `uppercase`
# assign a key in `hsh` to value `neither`
# return `hsh`

def letter_percentages(string)
  hsh = {}
  total = string.length
  lowercase = 0.0
  uppercase = 0.0
  neither = 0.0

  string.chars.each do |char|
    if char == char.upcase && char == char.downcase
      neither += 1
    elsif char == char.downcase
      lowercase += 1
    else
      uppercase += 1
    end
  end

  lowercase = (lowercase / total) * 100
  uppercase = (uppercase / total) * 100
  neither = (neither / total) * 100

  hsh[:lowercase] = lowercase
  hsh[:uppercase] = uppercase
  hsh[:neither] = neither

  hsh
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }