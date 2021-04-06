# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise.

# input: string
# output: boolean
# rules: characters that are not alphabetic should be ignored

# compare the original characters with the upcased version

def uppercase?(string)
  arr = string.chars.map do |char|
    char.upcase
  end

  arr == string.chars
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true