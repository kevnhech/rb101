def running_total(array)
  count = 0
  array.map { |value| count += value }
end