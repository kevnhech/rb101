# input: array
# output: two arrays
# rules: if the original array contains an odd number of elements, the middle element should be placed in the first half Array

def halvsies(array) # opens the definition block
  middle = (array.size / 2.0).ceil # divide the size of the argument (array) by 2.0, then call method .ceil so that the float can round down to the lowest number. assign the result to variable middle indicating that it can equal to the middle index of the argument (array)
  first_half = array.slice(0, middle) # grabs the argument's index starting from the beginning to the middle of the array to the middle of it and assigns this array to variable `first_half`
  second_half = array.slice(middle, array.size - middle) # grabs the argument's index starting from the middle of the array to the end of it
  [first_half, second_half] # returns the nested array that is now split in half
end # closes the definition block