# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2 # Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo

# On `line 3`, we iterate over each element in `array1` and within the block we append each element to `array2`.
# On `line 4`, we iterate over each element in `array1` again and within the block we call a mutating method on each element in the array. an element will be mutated if it starts with a `C` or an `S`.
# Since a mutating method is called on each element in `array1`, the elements for `array2` are mutated because they are equal to the same elements in `array1`

# Further Exploration

# How can this feature of ruby get you in trouble? How can you avoid it?

# It can get me in trouble if I did not intent `array2` to have the same output as `array1`. We can avoid this by assigning `array2` to the return value of `array1` being iterated with the `map` method.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = array1.map do |value|
  if value.start_with?('C', 'S')
    value.upcase
  else
    value
  end
end
puts array2 # Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo