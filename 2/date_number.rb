puts "Определение порядкового номера числа в году\nВведите год:"
year = gets.chomp.to_i
puts 'Введите месяц:'
month = gets.chomp.to_i
puts 'Введите день:'
day = gets.chomp.to_i

days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

days[1] = 29 if year%400 == 0 || (year%4 == 0 && year%100 != 0) 
  
days.each_with_index do |mdays, index|
  break if month == index + 1
  day += mdays
end

p "Порядковй номер дня #{day}"