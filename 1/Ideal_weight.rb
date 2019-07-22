puts 'Hello, what is your name?'
name = gets.chomp.capitalize!
puts 'And now type your growth'
growth = gets.chomp

if (growth.to_i - 110) < 0 
  p "#{name}, your weight is ideal" 
else 
  p "#{name}, your weight is not ideal"
end