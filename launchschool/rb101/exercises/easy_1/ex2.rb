def is_odd?(num)
  if num % 2 == 0
    puts false
  else
    puts true
  end
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

=begin

def is_odd?(num)
  num.remainder(2) == 1
end

is_odd?(5) # This will output true.

=end