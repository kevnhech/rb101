# input: nested array
# output: array

# Algorithm:
#   buy_fruit method
#   ================
#     - initialize a variable `arr` that will equal an empty array
#     - start a loop that iterates through every subarray
#       - insert the first index of the array to variable `arr` as many times as the second index says
#     - end the outer loop
#     - return variable `arr`

def buy_fruit(grocery_list)
  arr = []
  grocery_list.each do |list|
    list[1].times do
      arr << list[0]
    end
  end
  arr
end