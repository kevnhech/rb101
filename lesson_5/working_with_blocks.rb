[[1, 2], [3, 4]].each do |arr| # arr is now assigned to arrays [1, 2] and [3, 4].
  puts arr.first # Prints the first element in each array. In this case, it prints the first element on array [1, 2] and [3, 4].
end

# 1
# 3
# => [[1, 2], [3, 4]]



[[1, 2], [3, 4]].map do |arr| # The return value will be [1, 3].
  puts arr.first # The side effect is a string representation of the integer and the return value is nil.
  arr.first # Returns an element on each array at an index of 0.
end

# 1
# 3
# => [1, 3]



my_arr = [[18, 7], [3, 12]].each do |arr| # The return value will remain the same and my_arr will equal to [[18, 7] [3, 12]].
  arr.each do |num| # The each method is called. Now variable num equals each element in the sub-arrays.
    if num > 5
      puts num # Return value is nil.
    end
  end
end

# 18
# 7
# 12
# => [[18, 7], [3, 12]]



[[1, 2], [3, 4]].map do |arr| # The return value will change. The return value will be used.
  arr.map do |num| # arr is a variable that stores both arrays. Method map is called to assign each element to variable num.
    num * 2 # Now each element in both arrays are being multiplied by 2.
  end
end

# => [[2, 4], [6, 8]]



[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash| # Selects both hashes in the array then assigns them to variable hash.
  hash.all? do |key, value| # Method all? is called on variable hash to pass each hash's keys and values to variables key and value.
    value[0] == key.to_s # Compares the first letter in variable value to a hash's key's letter in string format. If the result is true, then the hash with the true result gets printed.
  end
end
# => [{ :c => "cat" }]



[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.any? do |key, value|
    value[0] == key.to_s
  end
end

# => [{:a=>"ant", :b=>"elephant"}, {:c=>"cat"}]. This gets printed because unlike all?, any? prints the full calling object if any of the hash's value starts with a letter that equals to their key's letter, and in this case this is true.



[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1| # Return value is a new array.
  element1.each do |element2| # The return value of element1 remains unchanged. Variable element2 is equal to both arrays.
    element2.partition do |element3| # The return value changes. Variable element3 is equal to every element in the sub-arrays.
      element3.size > 0 # Compares the value of every element to 0.
    end
  end
end


[[[1, 2], [3, 4]], [5, 6]].map do |arr| # Returns a new array.
  arr.map do |el| # Returns a new array.
    if el.to_s.size == 1 # Converts an integer to a string, then compares the size to one.
      el + 1 # Adds the integer by 1 if the if-statement returns true.
    else
      el.map do |n| # Returns a new array.
        n + 1 # Adds each element by 1 on the remaining arrays.
      end
    end
  end
end

# => [[[2, 3], [4, 5]], [6, 7]]