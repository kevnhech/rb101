# input: string
# output: string with no duplicate characters
# rules: can't use String#squeeze or String#squeeze!

def crunch(text) # creates a method with one argument
  index = 0 # creates a variable that holds a number of 0
  crunch_text = '' # creates a variable that holds an empty string
  while index <= text.length - 1 # opens a while loop. while variable `index` is less than or equal to the length of argument `text` minus one, run the loop block. stop until variable `index` is greater than the length of argument `text` minus one
    crunch_text << text[index] unless text[index] == text[index + 1] # shoves a character from argument `text` into string `crunch_text` if variable `text` does not equal the character after it
    index += 1 # increments variable `index` by 1
  end # closes the `while` loop
  crunch_text # returns the result of the loop
end # closes the method block
