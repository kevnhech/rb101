# (1..99).each { |n| puts n if n.odd? }

odd = 1.upto(99).to_a

odd.each do |n|
  if n.odd?
    puts n
  end
end