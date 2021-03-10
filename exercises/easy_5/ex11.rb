# input: string
# output: mutated string in reverse
# rules: return the input containing the same words, but with each word's characters reversed

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world")

# The method will return a different object.