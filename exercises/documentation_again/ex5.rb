a = %w(a b c d e) # An array with strings `a` through `e` as elements. 
puts a.fetch(7) # Prints an error.
puts a.fetch(7, 'beats me') # Prints string `beats me`.
puts a.fetch(7) { |index| index**2 } # Prints integer `49`.