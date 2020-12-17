# input: two integers
# output: integer
# rules: rotating 1 digit results in the original number being returned

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