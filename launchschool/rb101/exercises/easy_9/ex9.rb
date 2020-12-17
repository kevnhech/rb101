# input: three integers
# output: a grade that ranges from A to D
# rules: tested values are all between 0 and 100

# Algorithm:
#   - initialize variable `mean` that will equal to the result of the three integers added together divided by the amount of integers that exist
#   - create an if/else statement that will output either string `A`, `B`, `C`, or `D` depending on what value variable `mean` is.

def get_grade(first, second, third)
  grade = ''
  mean = (first + second + third) / 3
  if mean >= 90 && mean <= 100
    grade + "A"
  elsif mean >= 80 && mean < 90
    grade + "B"
  elsif mean >= 70 && mean < 80
    grade + "C"
  elsif mean >= 60 && mean < 70
    grade + "D"
  elsif mean >= 0 && mean < 60
    grade + "F"
  end
end