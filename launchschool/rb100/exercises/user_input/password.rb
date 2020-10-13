password = "Coomer123"

loop do
  puts ">> Please enter your password:"
  password = gets.chomp.to_s
  if password == "Coomer123"
    puts "Welcome!"
    break
  else
    puts "Invalid password!"
  end
end
