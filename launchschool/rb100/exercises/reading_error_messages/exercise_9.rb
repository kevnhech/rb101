# The problem with this code is that variable product on line 8 is equal to 0.
# On line 11 we can see that product (0) is being multiplied by digit. It doesn't matter
# what value digit is. If it's multipied by product (0) then it will remain zero. That's why 
# we must initialize variable product on line 8 to be 1.

def digit_product(str_num)
    digits = str_num.chars.map { |n| n.to_i }
    product = 0 # Change this to integer 1
  
    digits.each do |digit|
      product *= digit
    end
  
    product
  end
  
  
  p digit_product('12345')
  # expected return value: 120
  # actual return value: 0