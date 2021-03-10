# input: string
# output: integer(s)
# rules: all operations are integer operations. initialize the register to 0

# Algorithm:
#   minilang method
#   ===============
#     - initialize variable `register` that will equal to 0
#     - initialize variable `arr` that will be an empty array
#     - convert the argument to an array, then start a loop that will iterate over every subarray
#       - start a case statement on every subarray and follow the appropriate formula
#     - end the outer loop

def minilang(program)
  register = 0
  stack = []
  program.split.each do |token|
    case token
    when 'ADD' then register += stack.pop
    when 'DIV' then register /= stack.pop
    when 'MULT' then register *= stack.pop
    when 'MOD' then register %= stack.pop
    when 'SUB' then register -= stack.pop
    when 'PUSH' then stack.push(register)
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else register = token.to_i
    end
  end
end
