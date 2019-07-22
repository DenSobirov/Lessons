fibonacci = [1, 2]
loop do 
  number = fibonacci[-1] + fibonacci[-2]
  number > 100 ? break : fibonacci << number
end

p fibonacci