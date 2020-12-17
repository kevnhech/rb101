# input: string
# output: hash
# rules: the hash returns 3 keys: lowercase, uppercase, neither

# Algorithm:
#   letter_case_count method
#     - create variable `array` that will be an empty array
#     - create variable `count` that will be equal to 0
#     - start a loop that iterates through each character in the string
#       - create an if block that shoves

UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if UPPERCASE_CHARS.include?(char)
      counts[:uppercase] += 1
    elsif LOWERCASE_CHARS.include?(char)
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end