# frozen_string_literal: true

# Fill the array with Fibonacci numbers up to 10.

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
