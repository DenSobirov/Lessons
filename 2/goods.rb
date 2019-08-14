# frozen_string_literal: true

# Amount of goods. User enters step by step name of
# good, unit price and amount of units. User can enter
# any quantity of goods, until he enter word 'stop' like
# a name of unit.
# Need to:
# 1. Fill and dispaly hash whose keys are names of unit and
# values are nested hashes of unit price and amount of units
# and display total sum of each unit.
# 2. Calculate and display total sum of all units.

goods = {}
loop do
  puts 'Enter the name of unit:'
  name = gets.chomp
  break if name == 'stop'

  puts 'Enter unit price:'
  cost = gets.chomp.to_f
  puts 'Enter count of units:'
  count = gets.chomp.to_i

  goods[name] = { cost: cost, count: count }
end

a = goods.inject(0) do |total, (name, (att))|
  p "item: #{name}, cost: #{att[:cost] * att[:count]}"
  total + (att[:cost] * att[:count])
end
p "total: #{a}$"
p goods