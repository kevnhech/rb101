# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# prompt the user to enter a word or multiple words
# assign the user's input to variable `word`
# return how many characters there are in `word` excluding space by converting `word` into an array then compact each character in the string

print "Please write a word or multiple words: "
word = gets.chomp
puts "There are #{word.split.join('').length} characters in \"#{word}\"."