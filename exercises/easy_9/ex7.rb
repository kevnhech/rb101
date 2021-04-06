# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

# input: string
# output: string

# split the string into an array, then return the last substring with a comma, a space, and the first substring

def swap_name(string)
  string.split[-1] + ", " + string.split[0]
end

p swap_name("Joe Roberts") == "Roberts, Joe"