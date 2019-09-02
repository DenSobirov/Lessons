# frozen_string_literal: true

# Fill the hash with vowels letters, where value is order number of
# vowel letter in alphabet. (a - 1)

vowels_array = %w[a e i o u]
vowels_hash = {}
('a'..'z').each_with_index do |letter, index|
  vowels_hash[letter] = index + 1 if vowels_array.include?(letter)
end

p vowels_hash
