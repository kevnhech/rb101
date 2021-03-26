# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method

# input: array
# output: the same array but reversed
# rules: Array#reverse and Array#reverse! are forbidden

# initialize `first` and assign it to `0`
# initialize `last` and assign it to `-1`
# invoke a loop method that will iterate length of array divided by 2 amount of times
#   reassign the `first` element to the last, and the `last` to the `first`
#   increment `first` by `1`
#   increment `last` by `-1`
# end the block
# return the array input

def reverse!(array)
  first = 0
  last = -1

  unless array.length < 2
    array.length/2.times do
      array[first], array[last] = array[last], array[first]
      first += 1
      last += -1
    end
  end

  array
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true