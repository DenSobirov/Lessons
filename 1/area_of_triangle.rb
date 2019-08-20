# frozen_string_literal: true

# Area of triangle. Program requests base and height
# of triangle and calculating the area.

puts 'Hello, please put base if triangle'
base = gets.chomp.to_f
puts 'And height of the same triangle'
height = gets.chomp.to_f

puts "squre of triangle is #{base * height / 2.0}"
