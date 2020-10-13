name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# This prints "Bob" twice in all caps on different lines. It's becasue there is a desctructive method written in line number 3. This method changed variable name it changed variable save_name because it is equal to variable name.