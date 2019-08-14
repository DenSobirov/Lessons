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

def pythagorean_theorem(sides)
  gip = sides.delete(sides.max)
  k = sides[0]**2 + sides[1]**2
  g = gip**2
  k == g
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

if rep == 1
  p TRIANGLE_TYPE_MESSAGES[:equilateral_triangle]
elsif rep == 2
  p TRIANGLE_TYPE_MESSAGES[:isosceles_triangle]
  p TRIANGLE_TYPE_MESSAGES[:rectangle_triangle] if pythagorean_theorem(sides)
elsif pythagorean_theorem(sides)
  p TRIANGLE_TYPE_MESSAGES[:rectangle_triangle]
else
  p TRIANGLE_TYPE_MESSAGES[:not_right_triangle]
end
