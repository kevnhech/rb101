# Question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?("Spot")
ages.include?("Spot")
ages.key?("Spot")


# Question 2

munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!


# Question 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# Question 4

advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?("Dino")


# Question 5

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


# Question 6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"


# Question 7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat( ["Dino", "Hoppy"] )


# Question 8

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0..38)


# Question 9

# P: Count how many lowercase 't's in the given string statement
# E: counter == 2
# D: String, Array
# A: 
# - assign string to variable 'statement'
# - assign integer 0 to variable 'counter'
# - split the string into individual characters
# - iterate over each character
# - increment variable counter by one if each individual character is equal to string t
# - enter test case to see if I am right

statement = "The Flintstones Rock!"

counter = 0
statement.split(//).each do |letter|
  counter += 1 if letter == 't'
end

counter == 2

# Question 10

title = "Flintstone Family Members"

title.center(50)