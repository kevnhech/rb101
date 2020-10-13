# Question 1

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# Prints 1, 2, 2, 3 in separate lines.


# Question 2

# ! is a destructive method. It mutates a variable and every other variable assigned to the original caller. ? is a method that fundamentally asks itself, "is this true or false?" then prints the appropriate boolean.

# 1) != means Not equal to. You should use this when comparing values.
# 2) Putting ! before something will return either true or false. If you put it on anything other than false or nil, it will return true and if you put it on either false or nil, it returns true.
# 3) Putting ! after something will mutate the original calling. 
# 4) Putting ? before something prints an error.
# 5) Putting ? after something also prints an error.
# 6) Putting !! before something prints it's original boolean. All it does is it converts it's boolean value to the opposite, then does it again.


# Question 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub! 'important', 'urgent'


# Question 4

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # Permanently deletes whatever object is in index 1. In this case, 2 would be removed.
numbers.delete(1) # Permanently deletes number 1 from the array.

# Question 5

(10..100).include?(42)

# Question 6

famous_words = "seven years ago..."

famous_words.insert(0, "Four score and ")
famous_words.prepend("Four score and ")


# Question 7

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!


# Question 8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones = flintstones.to_a[2]
flintstones
