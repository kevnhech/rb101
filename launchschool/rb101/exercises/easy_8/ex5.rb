# input: string
# output: array (a list of all substrings of a string that are palindromic)
# rules: the return value should be arranged in the same sequence as the substrings appear in the string. duplicate palindromes should be included multiple times

# Algorithm:
#   palindromes method
#     - create a variable called `all_substring` that will contain a substring of the string
#     - create a variable called `arr` that will be an empty array
#     - start a loop that will iterate through variable `all_substring`
#       - compare the string and the reversed version of the string to see if theyre both equal, then check if the size of the substring is greater than 2 to insert the substring to array `arr` if both comparisons return true
#     - end the outer loop
#     - return variable `arr`

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

def palindromes(string)
  all_substring = substrings(string)
  arr = []

  all_substring.each do |word|
    arr << word if word.size >= 2 && word == word.reverse
  end

  arr
end