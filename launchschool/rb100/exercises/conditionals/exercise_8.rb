status = ['awake', 'tired'].sample

if_statement = if status == 'awake'
    puts 'Be productive!'
else
    puts 'Go to sleep!'
end

puts if_statement