# Create a method that takes two arguments, multiplies them together, and returns the result.

# multiply the second parameter by the first parameter

def multiply(x, y)
  x * y
end

p multiply(5, 3) == 15

# Further Exploration

# For fun: what happens if the first argument is an Array? What do you think is happening here?

p multiply([5], 3) # [5, 5, 5]. here we see element `5` repeating 3 times since it was multiplied 3 times.