TRIANGLE_TYPE_MESSAGES = {
                           equilateral_triangle: 'Треугольник равнобедренный и равносторонний',
                           isosceles_triangle:   'Треугольник равнобедренный',
                           rectangle_triangle:   'Треугольник прямоугольный',
                           not_right_triangle:   'Треугольник не прямоугольный'
                         }

def pythagorean_theorem(sides)
  gip = sides.delete(sides.max)
  k = sides[0]**2 + sides[1]**2
  g = gip**2
  k == g
end

sides = []
puts "Please enter three sides"
print "put first side: "
sides << gets.chomp.to_f
print "put second side: "
sides << gets.chomp.to_f
print "put third side: "
sides << gets.chomp.to_f

rep = sides.uniq.length

if rep == 1
  p TRIANGLE_TYPE_MESSAGES[:equilateral_triangle]
elsif rep == 2
  p TRIANGLE_TYPE_MESSAGES[:isosceles_triangle]
  if pythagorean_theorem(sides)
    p TRIANGLE_TYPE_MESSAGES[:rectangle_triangle]
  end
else
  if pythagorean_theorem(sides)
    p TRIANGLE_TYPE_MESSAGES[:rectangle_triangle]
  else 
    p TRIANGLE_TYPE_MESSAGES[:not_right_triangle]
  end 
end

