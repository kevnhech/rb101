# The output is the same because sunshine isn't assigned to a boolean. In fact on line 4, there are no booleans, for they are strings.

def predict_weather
  sunshine = ['true', 'false'].sample # Remove the apostrophes surrounding booleans true and false

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

# Call the definition method "predict_weather" to see output