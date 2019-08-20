# frozen_string_literal: true

# Quadratic equation. User enter 3 coefficient A, B and C.
# The program calculate discriminant, roots of equation, and
# display it.

puts 'Hello, please enter 3 factors of quadratic equation.'
print 'put a: '
a = gets.chomp.to_f
print 'put b: '
b = gets.chomp.to_f
print 'put c: '
c = gets.chomp.to_f

d = b**2 - 4 * a * c
if d.negative?
  puts "D = #{d}, there are no roots of the equation"
elsif d.zero?
  x = -b / (2 * a)
  puts "D = #{d}, root of the equation is #{x}"
else
  x1 = (-b + Math.sqrt(d)) / (2 * a)
  x2 = (-b - Math.sqrt(d)) / (2 * a)
  puts "D = #{d}, x1 = #{x1}, x2 = #{x2}"
end
