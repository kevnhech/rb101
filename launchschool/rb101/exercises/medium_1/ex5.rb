input: integer
output: string
rules: the argument will always be an odd integer

def print_row(grid_size, distance_from_center) # opens a method block with two arguments
  number_of_stars = grid_size - 2 * distance_from_center # initializes variable `number_of_stars` that will equal to the result of argumnet `grid_size` minus 2 multiplied by argument `distance_from_center`
  stars = '*' * number_of_stars # initializes variable `stars` that will equal to the result of string `*` multiplied by variable `number_of_stars`
  puts stars.center(grid_size) # outputs variable `star` that will be centered in a string of `grid_size` characters
end # closes the method block

def diamond(grid_size) # opens a method block with one argument
  max_distance = (grid_size - 1) / 2 # initializes variable `max_distance` that equals to the result of `grid_size` minus 1 divided by 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) } # opens a loop block that calls method `print_row` with arguments `grid_size` and `distance` the amount of times it takes to count from variable `max_distance` down to 0
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) } # opens a loop block that calls method `print_row` with arguments `grid_size` and `distance` the amount of times it takes to count from 1 up to variable `max_distance`
end # closes the method block