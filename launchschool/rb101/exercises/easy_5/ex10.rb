# input: string
# output: a banner that prints the input within a box
# rules: the input will always fit in my terminal window

# Algorithm:
#   print_in_box method
#   ===================
#     - multiply the string `-` by the size of the argument plus two, then surround it with `+` so that the size of the box is consistent (the top and bottom part of the box)
#     - multiply the string ` ` by the size of the arugment plus two, then surround it with `|` so that the size of the box is consistent (the middle part of the box)
#     - print a box like structure with the argument displayed in the middle of the box

def print_in_box(arg)
  puts "+#{'-' * (arg.size + 2)}+"
  puts "|#{' ' * (arg.size + 2)}|"
  puts "| #{arg} |"
  puts "|#{' ' * (arg.size + 2)}|"
  puts "+#{'-' * (arg.size + 2)}+"
end