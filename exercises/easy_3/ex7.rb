def oddities(array)
  counter = 0
  arr = []
  loop do
    break if counter == array.size
    if counter.even?
      arr << array[counter]
    end
    counter += 1
  end
  arr
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []