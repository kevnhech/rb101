def reverse_words(string)
  string = string.split.each do |x|
    if x.length >= 5
      x.reverse!
    end
  end
  string.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')