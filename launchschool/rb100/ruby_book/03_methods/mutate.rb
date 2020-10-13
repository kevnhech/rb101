a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
