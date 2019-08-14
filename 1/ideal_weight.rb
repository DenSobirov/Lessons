# frozen_string_literal: true

# Ideal weight: The program rquests users name and growth and dispaly
# ideal weight for user by name.
# Formula of calculating: result = (<growth> - 100)
# Output: "<name>, your weight is ideal"

puts 'Hello, what is your name?'
name = gets.chomp.capitalize!
puts 'And now type your growth'
growth = gets.chomp

if (growth.to_i - 110).negative?
  p "#{name}, your weight is ideal"
else
  p "#{name}, your weight is not ideal"
end
