# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither

# input: string
# output: a hash with 3 entries

# initialize `hsh` and assign it to an empty hash
# initialize `lowercase` and assign it to integer `0`
# initialize `uppercase` and assign it to integer `0`
# initialize `neither` and assign it to `neither`
# iterate over each character in the input string
#   invoke an if/else statement
#     increment `lowercase` by `1` if an element is lowercase
#     increment `uppercase` by `1` if an element is uppercase
#     increment `neither` by `1` if an element is neither lowercase or uppercase
#   end the block
#   assign key `lowercase` to `hsh` and give it a value of `lowercase`
#   assign key `uppercase` to `hsh` and give it a value of `uppercase`
#   assign key `neither` to `hsh` and give it a value of `neither`
#   return `hsh`
# end the block

def letter_case_count(string)
  hsh = {}
  lowercase = 0
  uppercase = 0
  neither = 0
  
  string.chars.each do |char|
    lowercase += 1 if char == char.downcase && char != char.upcase
    uppercase += 1 if char == char.upcase && char != char.downcase
    neither += 1 if char == char.upcase && char == char.downcase
  end

  hsh[:lowercase] = lowercase
  hsh[:uppercase] = uppercase
  hsh[:neither] = neither

  hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
