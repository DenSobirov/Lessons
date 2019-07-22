puts 'Hello, please enter 3 factors of quadratic equation.'
print "put a: "
a = gets.chomp.to_f
print "put b: "
b = gets.chomp.to_f
print "put c: "
c = gets.chomp.to_f

D = b**2 - 4*a*c
if D < 0
  puts "D = #{D}, there are no roots of the equation"
elsif D == 0
  x = -b/(2*a)
  puts "D = #{D}, root of the equation is #{x}"
else
  x1 = (-b + Math.sqrt(D))/(2*a)
  x2 = (-b - Math.sqrt(D))/(2*a)
  puts "D = #{D}, x1 = #{x1}, x2 = #{x2}"
end