# Write a method that counts the number of occurrences of each element in a given array.

# input: array of strings
# output: an integer of the number of occurences of each element in the array
# rules: the words in the array are case-sensitive
#        once counted print each element alongside the number of occurrences

# initialize arrays `car`, `truck`, `suv`, and `motorcycle`
# iterate through each element in `vehicles`
  # append string `car` to array `car`
  # append string `truck` to array `truck`
  # append string `SUV` to array `SUV`
  # append string `motorcycle` to array `motorcycle`
# end the block
# return every vehicle name and the length of the vehicle name arrays

def count_occurrences(arr)
  car = []
  truck = []
  suv = []
  motorcycle = []

  arr.each do |str|
    car << str if str.downcase == "car"
    truck << str if str.downcase == "truck"
    suv << str if str.downcase == "suv"
    motorcycle << str if str.downcase == "motorcycle"
  end
  
  puts "car => #{car.length}"
  puts "truck => #{truck.length}"
  puts "SUV => #{suv.length}"
  puts "motorcycle => #{motorcycle.length}"
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)