# input: string
# output: mutated string with the first character of each word swapped with the last character
# rules: every word contains at least one letter, the string will always contain at least one word, and each string contains nothing but words and spaces

def swap_first_last_characters(word) # creates a definition method with one argument
  word[0], word[-1] = word[-1], word[0] # the first value in this argument will equal the last value, and the last value in this argument will equal the first value
  word # prints a new argument with the first character and the last character swapped for the entire string in the argument
end # closes the method block

def swap(words) # creates a definition method with one argument
  result = words.split.map do |word| # converts the argument into an array separating each value iterates over each value then assigns the result of this loop to variable `result`
    swap_first_last_characters(word) # calls the first method to swap the first and last character for every string in the array
  end # closes the loop
  result.join(' ') # changes the array into a string separating each value with a space
end # closes the method block

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'