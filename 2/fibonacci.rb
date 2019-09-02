# frozen_string_literal: true

# Fill the array with Fibonacci numbers up to 100.

fibonacci = [1, 1]

fibonacci << fibonacci[-2..-1].sum while fibonacci[-2..-1].sum <= 100

p fibonacci
