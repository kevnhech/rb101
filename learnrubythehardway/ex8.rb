formatter = "%{first} %{second} %{third} %{fourth}" # variable formatter contains a form of method that if called nullifies strings "first" "second" "third" "fourth"
puts formatter % {first: 1, second: 2, third: 3, fourth: 4} # prints a formatted version of the block, nullifying the strings contained in variable formatter. prints 1, 2, 3, 4
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"} # prints strings "one", "two", "three", "four" because the line calls the formatter variable which nullifies a specific set of strings
puts formatter % {first: true, second: false, third: true, fourth: false} # prints true false true false only because the formatter variable is called
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter} # prints variable formatter four times, then nullifies strings "first:", "second:", "third:" "fourth:"

puts formatter % { # prints to the console result of formatting whatever is in the block of code in a singular line
  first: "I had this thing.", # line of string
  second: "That you could type up right.", # line of string
  third: "But it didn't sing.", # line of string
  fourth: "So I said goodnight." # line of string
} # closing curly brace that closes the open block of code