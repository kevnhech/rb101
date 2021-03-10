VALID_CHOICES = ['r', 'p', 's', 'S', 'l']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'r' && second == 's') ||
    (first == 'p' && second == 'r') ||
    (first == 's' && second == 'p') ||
    (first == 'r' && second == 'l') ||
    (first == 'l' && second == 'S') ||
    (first == 'S' && second == 's') ||
    (first == 's' && second == 'l') ||
    (first == 'l' && second == 'p') ||
    (first == 'p' && second == 'S') ||
    (first == 'S' && second == 'r')
end

def results(player, computer)
  if win?(player, computer)
    prompt("Congratulations! You are the grand winner!")
  else
    prompt("Computer is the grand winner!")
  end
end

player_score = 0
computer_score = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: rock, paper, scissors, spock, lizard")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  loop do
    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end
    prompt("Player: #{player_score}. Computer: #{computer_score}.")
    break
  end

  loop do
    if player_score == 5
      results(choice, computer_choice)
    elsif computer_score == 5
      results(choice, computer_choice)
    else
      break
    end
    break
  end

  break if player_score == 5 || computer_score == 5
end
