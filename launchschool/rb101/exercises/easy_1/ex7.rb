def stringy(num)
  string = ''
  (num / 2).times { string << '10' }
  if num.odd?
    string << '1'
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

=begin

# FURTHER EXPLORATION...

def stringy(num)
  string = ''
  (num / 2).times { string << '01' }
  if num.odd?
    string << '0'
  end
  string
end

=end