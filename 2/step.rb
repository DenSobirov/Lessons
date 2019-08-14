# frozen_string_literal: true

# Fill in array with numbers from 10 to 100
# with step 5

array = []
(10..100).step(5) { |count| array << count }
p array
