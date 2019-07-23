fibonacci = []
loop do
  if fibonacci.count < 2
    fibonacci << 1
  else
    number = fibonacci[-1] + fibonacci[-2]
    number > 100 ? break : fibonacci << number
  end
end

p fibonacci
