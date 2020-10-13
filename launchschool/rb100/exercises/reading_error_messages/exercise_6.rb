# Since our original code did not have an explicit return statement, the return value is the evaluated result of the last line executed.
# The last line is an if statement, which returns the evaluated result of the branch whose condition evaluates to true, or nil
# if there is no such branch. When we passed 'Confucius' or 'Yoda' in as the argument, the condition person == 'Einstein' evaluated to false,
# so the last if statement evaluated to nil. This caused our original method to return nil every time an argument other than 'Einstein' is passed in.

def get_quote(person)
    if person == 'Yoda'
      'Do. Or do not. There is no try.' # return
    end
  
    if person == 'Confucius'
      'I hear and I forget. I see and I remember. I do and I understand.' # return
    end
  
    if person == 'Einstein'
      'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.' # return
    end
  end
  
  puts 'Confucius says:'
  puts '"' + get_quote('Confucius') + '"'