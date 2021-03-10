puts "What is your name?"
answer = gets.chomp
if answer.empty?
  answer = "Teddy"
end

puts "#{answer} is #{rand(20..200)} years old!"