# input: string
# output: reversed string
# rules: the string needs to contain the last name, a comma, a space, and the first name

# Algorithm:
#   swap_name method
#     - initialize a variable `str` that will equal an empty string
#     - call the argument in array format, get the index for the last name, then insert it to variable `str`
#     - increment a comma and a space to variable `str`
#     - call the argument in array format, get the index for the last name, then insert it to variable `str`
#     - return variable `str`

def swap_name(name)
  str = ''
  str += name.split[1]
  str += ', '
  str += name.split[0]
  str
end