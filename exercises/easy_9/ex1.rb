# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values

# input: an array and a hash
# output: string
# rules: our method should return a greeting that uses the person's full name, and mentions the person's title and occupation

# return a greeting sentence with the return value of method `#join` called on the input array and return both the hash keys

def greetings(array, hash)
   "=> Hello, #{array.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })