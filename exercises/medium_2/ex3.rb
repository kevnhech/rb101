# input: string
# output: hash
# rules: the string will always contain at least one character

# Algorithm:
#   letter_percentages method
#     - initialize variable `hash` that will equal to three keys and each of them with a value of 0.0
#     - start a loop that will iterate through every character in the argument
#       - initialize an if/else statement that will add the values in `hash` if there are any lowercase, uppercase, or neither characters divided by the length of the argument
#     - end the outer loop
#     return `hash`

UPPER_CASE = ('A'..'Z').to_a
LOWER_CASE = ('a'..'z').to_a

def letter_percentages(string)
  hash = { lowercase: 0.0, uppercase: 0.0, neither: 0.0}
  lowercase = 0.0
  uppercase = 0.0
  neither = 0.0
  string.chars.each do |char|
    if LOWER_CASE.include?(char)
      lowercase += 1.0
    elsif UPPER_CASE.include?(char)
      uppercase += 1.0
    else
      neither += 1.0
    end
  end
  hash[:lowercase] += (lowercase / string.length.to_f) * 100
  hash[:uppercase] += (uppercase / string.length.to_f) * 100
  hash[:neither] += (neither / string.length.to_f) * 100
  hash
end
