# Write a method which takes a grocery list of fruits with quantities and converts it into an array of the correct number of each fruit

# input: array
# output: array

# initialize array `arr`
# iterate over the input array
#   iterate over each subarray
#     invoke a loop that will iterate x amount of times
#       append the string in the subarray to `arr`
#     end the block
#   end the block
# end the block
# return `arr`

def buy_fruit(array)
  grocery_list = []

  array.each do |arr|
    arr[-1].times do
      grocery_list << arr[0]
    end
  end

  grocery_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]