# Question 1

if false
  greeting = "hello world"
end

greeting # Outputs nil


# Question 2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting # => "hi there"
puts greetings # => {:a=>"hi there"}


# Question 3

A) "one", "two", "three"
B) "one", "two", "three"
C) "two", "three", "one"


# Question 4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end