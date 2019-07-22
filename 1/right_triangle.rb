def reflect_triangle_type(triangle_type)
  type = {
           equilateral_triangle:   'Треугольник равнобедренный и равносторонний',
           isosceles_triangle:     'Треугольник равнобедренный',
           rectangle_triangle:     'Треугольник прмоугольный',
           not_right_triangle:     'Треугольник не прмоугольный'
         }
  puts type[triangle_type]
end

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
  reflect_triangle_type(:equilateral_triangle)
elsif rep == 2
  reflect_triangle_type(:isosceles_triangle)
  if pythagorean_theorem(sides)
    reflect_triangle_type(:rectangle_triangle)
  end
else
  if pythagorean_theorem(sides)
    reflect_triangle_type(:rectangle_triangle) 
  else 
    reflect_triangle_type(:not_right_triangle)
  end 
end

