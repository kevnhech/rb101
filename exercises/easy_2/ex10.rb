array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# The code will print an array with names inside of them, and some of those names will be in all caps (ex: Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo). The first variable, array1, has an array with names inside. Then the each method is called on array1, which gets each name in the array and shovels it into another variable that is an array. The each method is called again for variable array1, and it will reassign each name in the array to the same name in all caps if any of the names start with the letter C or S.