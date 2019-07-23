goods = {}
loop do
  puts 'Введите имя товара:'
  name = gets.chomp
  break if name == 'stop'
  puts 'Введите стоимость товара:'
  cost = gets.chomp.to_f
  puts 'Введите количество единиц товара'
  count = gets.chomp.to_i

  goods[name] = {cost: cost, count: count}
end

a = goods.inject(0) do |total, (name, (att))|
 p "item: #{name}, cost: #{att[:cost] * att[:count]}"
 total + (att[:cost] * att[:count])
end
p "total: #{a}$"
