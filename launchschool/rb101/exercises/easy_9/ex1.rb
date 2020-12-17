# input: array and hash
# output: string
# rules: return a greeting that uses the persons full name and metntions the persons title and occupation

# Algorithm:
#   greetings method
#   ================
#     - call the join method with a space in between each value for the array using string interpolation, then call the hash values using string interpolations

def greetings(array, hash)
  prompt("Hello, #{array.join(" ")}! Nice to have a #{hash[:title]} #{hash[:occupation]} around.")
end

def prompt(msg)
  puts "=> #{msg}"
end