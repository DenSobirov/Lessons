goods = {}
loop do 
  puts 'Введите имя товара:'
  name = gets.chomp
  break if name == 'стоп'
  puts 'Введите стоимость товара:'
  cost = gets.chomp.to_f
  puts 'Введите количество единиц товара'
  count = gets.chomp.to_i

  goods[name] = {cost: cost, count: count}
end

total_sum = 0
goods.each do |name, att|
  puts "item: #{name}, cost: #{att[:cost]*att[:count]}"
  total_sum += att[:cost]*att[:count]
end
p "Total: #{total_sum}"