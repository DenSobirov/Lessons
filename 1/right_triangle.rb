# frozen_string_literal: true

# Program requests three sides of triangle and defines
# whether triangle rectangular. Also display notification
# if triangle is isosceles or equilateral.
# Calculation carried using the Pythagorean theorem

TRIANGLE_TYPE_MESSAGES = {
  equilateral_triangle: 'Triangle isosceles and equilateral',
  isosceles_triangle: 'Isosceles triangle',
  rectangle_triangle: 'The triangle is rectangular',
  not_right_triangle: 'The triangle is not rectangular'
}.freeze

def pythagorean_theo(sides)
  hypotenuse = sides.delete(sides.max)
  hypotenuse**2 == sides[0]**2 + sides[1]**2 if sides.length != 1
end

def find_type_of_triangle(sides, rep)
  if rep == 1
    puts TRIANGLE_TYPE_MESSAGES[:equilateral_triangle]
  elsif rep == 2
    puts TRIANGLE_TYPE_MESSAGES[:isosceles_triangle]
    puts TRIANGLE_TYPE_MESSAGES[:rectangle_triangle] if pythagorean_theo(sides)
  elsif pythagorean_theo(sides)
    puts TRIANGLE_TYPE_MESSAGES[:rectangle_triangle]
  else
    puts TRIANGLE_TYPE_MESSAGES[:not_right_triangle]
  end
end

sides = []
puts 'Please enter three sides'
print 'put first side: '
sides << gets.chomp.to_f
print 'put second side: '
sides << gets.chomp.to_f
print 'put third side: '
sides << gets.chomp.to_f

rep = sides.uniq.length

if sides.select(&:negative?).any?
  puts 'You enter the negative side, try again'
else
  find_type_of_triangle(sides, rep)
end
