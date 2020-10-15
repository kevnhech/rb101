input_file = ARGV.first # assigns an argument value that holds command line arguments to variable input_file

def print_all(f) # opens a mini-script block. print_all is the function variable and (f) is its argument
  puts f.read # prints the argument to the console
end # closes the mini-script block

def rewind(f) # opens a mini-script block that defines function variable rewind with argument (f)
  f.seek(0) # starts at the beginning of whatever is passed on to argument (f)
end # closes the mini-script block

def print_a_line(line_count, f) # opens function block that defines function variable print_a_line that has two arguments line_count and f
  puts "#{line_count}, #{f.gets.chomp}" # prints to the console two string interpolations 
end # closes the function block

current_file = open(input_file) # opens the file that has been typed in the command line, then assigns this command to variable current_file

puts "First let's print the whole file:\n" # prints a sentence to the console following a new line after

print_all(current_file) # calls function variable print_all that calls the argument current_file. this line opens the file entered in the command line then prints whatever text is inside the document

puts "Now let's rewind, kind of like a tape." # prints a sentence to the console

rewind(current_file) # calls function variable rewind that calls the argument current_file. this line starts from the beginning of the file that is entered in the command line

puts "Let's print three lines:" # prints a sentence to the console

current_line = 1 # assigns number one to the variable
print_a_line(current_line, current_file) # calls function print_a_line with argument current_line, and current_file. what this line does is it prints the numbered sentence in the document, then prints the actual sentence itself. ex: "1, This is line 1"

current_line += 1 # assigns the sum of variable current_line + 1 to current_line which now holds a value of 2
print_a_line(current_line, current_file) # calls function print_a_line with arguments current_line and current_file.

current_line += 1 # assigns the sum of variable current_line + 1 to current_line which now holds a value of 3
print_a_line(current_line, current_file) # calls function print_a_line with arguments current_line and current_file
