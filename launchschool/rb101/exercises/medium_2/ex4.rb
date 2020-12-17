input: string
output: boolean
rules: to be balanced parentheses must occur in matching pairs

def balanced?(string) # opens a method block
  parens = 0 # initializes a string that equals to 0
  string.each_char do |char| # starts a loop that iterates through every character in the argument
    parens += 1 if char == '(' # increments `parens` by 1 if a character in the argument equals `(`
    parens -= 1 if char == ')' # deducts `parens` by 1 if a character in the argument equals `)`
    break if parens < 0 # stops the loop if variable `parens` is less than 0
  end # closes the outer loop

  parens.zero? # returns boolean true if variable `parens` equals to 0, false otherwise
end # closes the method block