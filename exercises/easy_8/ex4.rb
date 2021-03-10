# input: string
# output: array (a list of all substrings of a string)
# rules: all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on

def leading_substrings(string)
  arr = []
  count = 0

  loop do
    break if string.size == arr.size
    arr << string[0..count]
    count += 1
  end

  arr
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end