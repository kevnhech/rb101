username = "Alix"
password = "Cheese"

loop do
  puts ">> Please enter user name:"
  username = gets.chomp.to_s
  puts ">> Please enter your password:"
  password = gets.chomp.to_s
  if username == "Alix" && password == "Cheese"
    puts "Welcome!"
    break
  else
    puts "Authorization failed!"
  end
end
