# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# input: array
# output: new array with the elements of the original list in reverse order
# rules: do not modify the original list
#        Array#reverse and Array#reverse! are forbidden
#        using the method that was written for the previous exercise is forbidden

# initialize array `arr`
# initialize `idx` and assign it to integer `-1`
# invoke a loop
#   stop the loop once `idx` is equal to the length of the original array in the form of a negative number
#   append the last element of the original array to `arr` using `idx` 
#   increment `idx` by `-1`
# end the block
# return `arr`

def reverse(array)
  arr = []
  idx = -1
  loop do
    if array.length > 0
      arr << array[idx]
      break if idx == -array.length
      idx += -1
    else
      break
    end
  end
  arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true