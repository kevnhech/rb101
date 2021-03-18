# What does this code print out? Think about it for a moment before continuing.

name = 'Bob'
save_name = name # both local variables `save_name` and `name` are assigned to string `Bob`
name.upcase! # a mutating method is called on `name`, mutating the object it references. now `name` and `save_name` reference the same mutated string object `BOB`
puts name, save_name # BOB, BOB