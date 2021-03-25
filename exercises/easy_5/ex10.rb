# Write a method that will take a short line of text, and print it within a box.

# input: string
# output: string printed within a box
# rules: the input will always fit in the terminal window

# write a box
# return the input within the box in the center
# multiply each dash and space by the length of the string

def print_in_box(string)
  puts "+-#{"-" * string.length}-+
| #{" " * string.length} |
| #{string} |
| #{" " * string.length} |
+-#{"-" * string.length}-+"
end

print_in_box('To boldly go where no one has gone before.')