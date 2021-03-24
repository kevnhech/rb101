# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes(string)
  count = Hash.new(0)
  string.split.each do |str|
    clean_str = str.delete('^A-Za-z')
    count[clean_str.length] += 1
  end
  count
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}