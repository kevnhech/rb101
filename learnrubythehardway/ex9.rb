# Here's some new strange stuff, remember type it exactly.

days = "Mon Tue Wed Thu Fri Sat Sun" # assigns strings into a variable
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug" # assigns strings into a variable, within those strings a command \n is called. what it does is it creates a new line

puts "Here are the days: #{days}" # prints to the console a string and a string interpolation
puts "Here are the months: #{months}" # prints to the console a string and a string interpolation

puts %q{ # calls %q before the open block, surrounding text inside the block with '', then prints the result
  There's something going on here.
  With this weird quote 
  We'll be able to type as much as we like.
  Even 4 lines if we want, or 5, or 6.
} # closes the open block of code