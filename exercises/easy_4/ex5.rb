def multisum(int)
  multiples_array = []

  (1..int).select do |n|
    multiples_array << n if n % 3 == 0 || n % 5 == 0
  end

  multiples_array.sum
end