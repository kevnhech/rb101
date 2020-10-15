filename = ARGV.first # assigns argument variable to variable filename

txt = open(filename) # assigns a command that opens a file in the variable to variable txt

puts "Here's your file #{filename}:" # prints to the console a string and a string interpolation
print txt.read # prints the text inside variable txt with no parentheses to the console

print "Type the filename again: " # prints a string to the console
file_again = $stdin.gets.chomp # assigns input from the user to variable file_again

txt_again = open(file_again) # assigns a command that opens a file in the variable to variable txt_again

print txt_again.read # prints whatever is stored inside variable txt_again to the console with no parentheses

txt.close()
txt_again.close()