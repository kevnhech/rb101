def say(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end

say("Welcome to the Car Loan Calculator!")

loop do # main loop
  loan_amount = ''
  loop do
    say("What is your loan amount?")
    loan_amount = Kernel.gets().chomp()

    if integer?(loan_amount)
      break
    else
      say("It seems you've entered an input that's not an integer. Please try again.")
    end
  end
  
  interest_rate = ''
  loop do
    say("What is your interest rate percentage?")
    interest_rate = Kernel.gets().chomp()
    
    if number?(interest_rate)
      interest_rate = (interest_rate.to_f / 100) / 12
      break
    else
      say("It seems you've entered an input that's not a float number. Please try again.")
    end
  end

  loan_term = ''
  loop do
    say("What is your loan term in months?")
    loan_term = Kernel.gets().chomp()

    if integer?(loan_term)
      break
    else
      say("It seems you've entered an input that's not an integer. Please try again.")
    end
  end

  monthly_payment = loan_amount.to_f() * (interest_rate.to_f() / (1 - (1 + interest_rate.to_f())**(-loan_term.to_f())))

  say("You have to make a total payment of $#{monthly_payment.round(2)} every month.")

  say("Do you want to perform another loan calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()

  break unless answer.downcase.start_with?('y')
end

say("Thank you for using the calculator. Good bye!")