# method find_first_nonzero_among was given 6 arguments but expects only 1 (specified by the parameter numbers).

def find_first_nonzero_among(numbers)
    numbers.each do |n|
      return n if n.nonzero?
    end
  end
  
  # Examples
  
  find_first_nonzero_among(0, 0, 1, 0, 2, 0)
  find_first_nonzero_among(1)
