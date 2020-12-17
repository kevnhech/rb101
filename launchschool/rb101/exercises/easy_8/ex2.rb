# input: string
# output: string
# rules: Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create

# Algorithm:
#   - return a message that asks the user to enter a noun, then assign the user's input to variable `noun`
#   - return a message that asks the user to enter a verb, then assign the user's input to variable `verb`
#   - return a message that asks the user to enter an adjective, then assign the user's input to variable `adjective`
#   - return a message that asks the user to enter an adverb, then assign the user's input to variable `adverb`
#   - return message `Do you `verb` your `adjective` `noun` `adverb`? That's hilarious!`

print "Enter a noun: "
noun = gets.chomp
print "Enter a verb: "
verb = gets.chomp
print "Enter an adjective: "
adjective = gets.chomp
print "Enter an adverb: "
adverb = gets.chomp

print "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"