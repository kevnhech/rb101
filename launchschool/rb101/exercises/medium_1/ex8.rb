def fibonacci(number)
  if number <= 2
    return 1
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end