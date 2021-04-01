# Write a method that returns a list of all substrings of a string that are palindromic

# input: string
# output: array of palindromes
# rules: the return value should be arranged in the same sequence as the substrings appear in the string

def leading_substrings(string)
  arr = []
  first_char = 0
  char = 0

  loop do
    break if char == string.length
    arr << string[first_char..char]
    char += 1
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

def palindrome?(string)
  string == string.reverse && string.length > 1
end

def palindromes(string)
  arr = []
  substrings(string).each do |chars|
    arr << chars if palindrome?(chars)
  end
  arr
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]