# 50 is not the output because local variable "number" is equal to the users input, and the users input is read as a string rather than an integer

def multiply_by_five(n)
    n * 5
  end
  
  puts "Hello! Which number would you like to multiply by 5?"
  number = gets.chomp # add object ".to_i"
  
  puts "The result is #{multiply_by_five(number)}!"