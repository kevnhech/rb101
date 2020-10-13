# Problem 1

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# This prints the array 1, 2, 3 because the block has a truthy value which is string 'hi'.

# Problem 2

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Count returns the amount of strings in the array that have a length less than 4, so in this case it would output 2. We can find out by checking the Ruby docs.

# Problem 3

[1, 2, 3].reject do |num|
  puts num
end

# The return value of reject is 1, 2, 3. Since puts is called in the block and it's nil, reject returns the new array.

# Problem 4

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# I think the return value would be { "a" => "ant", "b" => "bear", "c" => "cat" }. In the block, the first letter of every value in the array gets assigned to the empty hash, which is now a key, with a value of a string in the array.

# Problem 5

hash = { a: 'ant', b: 'bear' }
hash.shift

# It returns the first key and value pair in an array, then removes it from the hash. [:a, 'ant'] We can find out by checking the Ruby docs.

# Problem 6

['ant', 'bear', 'caterpillar'].pop.size

# Removes the last string in the array, 'caterpillar' but it doesn't print it. Instead, it only prints the size of it, which is 11.

# Problem 7

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The return value of the block is true. puts num is envoked once because any? stops iterating at this point.

# Problem 8

arr = [1, 2, 3, 4, 5]
arr.take(2)

# Take just prints a number of values you wish in an array. In this case, take(2) prints [1, 2]. It's not destructive either and we can find out by looking at the Ruby docs.

# Problem 9

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# The return value of map will be [nil, "bear"] since it's size is greater than 3. When none of the conditions is an if statement evaluates as true, the if statement itself returns nil.

# Problem 10

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# The return value is [1, nil, nil] because puts is a nil. The first element, the if condition evaluates to false, which means num is the block's return value for that iteration.