a = %w(a b c d e)
puts a.fetch(7) # Prints error.
puts a.fetch(7, 'beats me') # Prints the string "beats me."
puts a.fetch(7) { |index| index**2 } # Multiplies 7 by itself twice, resulting in an output of 49.