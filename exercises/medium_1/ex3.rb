# input: integer
# output: integer
# rules: i dont have to handle multiple 0s

def rotate_array(rotation)
  arr = []
  rotation.each do |sub|
    arr << sub
  end
  first = arr.shift
  arr << first
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end