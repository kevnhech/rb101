# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order

# input: two arrays
# output: merged ordered array
# rules: #sort and #flatten are forbidden

# initialize empty array `merged_list`
# iterate over each element in both input arrays, then append the elements to `merged_list`

# use bubble sort method

def merge(arr1, arr2)
  merged_list = []

  arr1.each do |x|
    merged_list << x
  end

  arr2.each do |x|
    merged_list << x
  end

  loop do
    swapped = false
    1.upto(merged_list.size - 1) do |index|
      next if merged_list[index - 1] <= merged_list[index]
      merged_list[index - 1], merged_list[index] = merged_list[index], merged_list[index - 1]
      swapped = true
    end

    break unless swapped
  end
  merged_list
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]