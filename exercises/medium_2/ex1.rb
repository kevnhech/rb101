# input: text file
# output: longest sentence in the text file based on number of words AND the number of words in the longest sentence
# rules: sentences end with periods, exclamation points, or question marks.

# Algorithm:
#   - initialize variable `text` that reads text file `pg84.txt`
#   - initialize variable `sentence` that will split variable `text` by periods, exclamation points, or question marks
#   - initialize variable `longest_sentence` that will equal to the longest string in array `sentence`
#   - initialize variable `sentence_length` that equals to the length of variable `longest_sentence`
#   - return variable `longest_sentence` and `sentence_length` in the same line

text = File.read("pg84.txt")
sentence = text.split(/\.|\?|!/)
longest_sentence = sentence.max_by(&:length)
sentence_length = longest_sentence.split.length
puts "#{longest_sentence} (#{sentence_length} words)"
