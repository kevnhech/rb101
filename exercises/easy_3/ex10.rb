# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# input: integers
# output: boolean true if the input is a palindrome, false otherwise
# rules: integers cannot be reversed using `reverse` method

# call a method that will change the integers into a string, then compare the return value of it to itself in reversed form

def palindromic_number?(number)
  number.to_s == number.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# Further Exploration

# Suppose your number begins with one or more 0s. Will your method still work? Why or why not? Is there any way to address this?

# It will not work. I have no idea why.