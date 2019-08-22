# frozen_string_literal: true

# Program requests 3 numbers which denote date, month and year.
# Define order number of date from beginning of year. Need to take
# into account a leap year. Don't user date methods of Ruby.

def year_is_leap?(year)
  (year % 400).zero? || ((year % 4).zero? && year % 100 != 0)
end

puts "Define order number of day in year\nEnter year:"
year = gets.chomp.to_i
puts 'Enter the month:'
month = gets.chomp.to_i
puts 'Enter the day:'
day = gets.chomp.to_i

days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

days[1] = 29 if year_is_leap?(year)

days.each_with_index do |mdays, index|
  break if month == index + 1

  day += mdays
end

puts "Order number of day #{day}"
