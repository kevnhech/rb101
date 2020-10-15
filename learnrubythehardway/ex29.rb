people = 20
cats = 30
dogs = 15


if people < cats
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many cats! The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end


dogs += 5

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end


if people == dogs
  puts "People are dogs."
end

=begin

1) I think it puts the code block on hold until the if statement is true.
2) It needs to be indented because it makes it easier to read. 
3) If it isn't indented, nothing happens. It just becomes harder to read.
4) Yes I can.
5) When I change the initial values for variable people, cats, and dogs, then other if statements will run.

=end