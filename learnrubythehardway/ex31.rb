=begin

puts "You enter a dark room with two doors. Do you go through door #1, door #2, or door #3?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
    puts "1. Take the cake."
    puts "2. Scream at the bear."
    puts "3. Shoot the bears head."

    print "> "
    bear = $stdin.gets.chomp

    if bear == "1"
      puts "The bear eats your face off. Good job!"
    elsif bear == "2"
      puts "The bear eats your legs off. Good job!"
    elsif bear == "3"
      puts "You've killed the bear. Good job!"
    else
      puts "Well, doing %s is probably better. Bear runs away." % bear
    end

  elsif door == "2"
    puts "You stare into the endless abyss at Cthulhu's retina."
    puts "1. Blueberries."
    puts "2. Yellow jacket clothespins."
    puts "3. Understanding revolvers yelling melodies."
    puts "4. Drop a nuke on that fool."

    print "> "
    insanity = $stdin.gets.chomp

    if insanity == "1" || insanity == "2"
      puts "Your body survives powered by a mind of jello. Good job!"
    elsif insanity == "4"
      puts "You've killed the cosmic entity everyone fears. Good job!"
    else
      puts "The insanity rots your eyes into a pool of muck. Good job!"
    end

  elsif door == "3"
    puts "You wake up in your bed and realize that your whole life is a lie. None of this is real. Good job!"

  else
    puts "You stumble around and fall on a knife and die. Good job!"
  end

=end

# New Game

puts "You're on a hiking trip with your family and everyone is having a good time. You go take a bathroom break and decide to do it on a nearby tree where no one can spot you. Before you do your business, you notice a gaping hole on the tree that is lit inside and has smoke coming out of it. It's large enough for you to go in. Do you proceed?"

print "> "
hole = $stdin.gets.chomp

if hole == "yes"
  puts "You step inside the tree. After walking around, you begin to notice how large the inside of this tree is. The realization hits. You're in another world! What do you say? Do you make a new living here?"
    
  print "> "
  world = $stdin.gets.chomp
    
  if world == "yes"
    puts "You start off small, and insignificant, having nothing. You explore the world, and grasp the fundamental concept of it since it's vastly different than the one you were born in. Once you gain the knowledge and strength, a great evil exposes itself threatening to destroy this world, then your home world. You confront this evil and you slay it infront of everyone. You are now titled a hero in this world, and are now crowned as King! Good job!"
  else
    puts "You miss out on a great opportunity, then go back to hiking with your family and forget about everything you've seen."
  end

else
  puts "You potty, catch up to your family, then proceed the hike."
end
  
