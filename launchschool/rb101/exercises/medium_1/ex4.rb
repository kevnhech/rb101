def lights_on(n)
  lights = {}
  (1..n).each { |idx| lights[idx] = false }
  (1..n).each do |idx|
    lights.each { |k, v| lights[k] = !v if k % idx == 0 }
  end
  lights.select { |_, v| v }.keys
end