input: integer
output: integer
rules: return the last digit of the nth fibonacci number

Algorithm:
  fibonacci_last method
  =====================
    - convert the result of method `fibonacci` to a string, call the last value of the string, then convert the string to an integer

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end