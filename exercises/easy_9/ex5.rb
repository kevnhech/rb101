# input: string
# output: boolean
# rules: characters that are not alphabetic should be ignored

# Algorithm:
#   - initialize constant `LOWERCASE` that will equal to a lowecase version of the alphabet
#   uppercase? method
#   =================
#     - return boolean `false` if the argument contains any of the strings that constant `LOWERCASE` share
#     - otherwise return `true`

def uppercase?(string)
  if string.chars.all? { |char| char == char.upcase}
    true
  else
    false
  end
end