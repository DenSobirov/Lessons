# frozen_string_literal: true

# class Station
class Station
  attr_reader :name

  def initialize(name)
    @name = name
    @trains = Hash.new('No trains')
  end

  def show_type_trains
    pass_count = @trains.count { |train| train[1] == 'passenger train' }
    fr_count = @trains.count { |train| train[1] == 'freight train' }
    puts 'Trains on sation:'
    puts "Passanger trains: #{pass_count}\nFreight trains: #{fr_count}"
  end

  def show_all_trains
    puts "\nAll trains on station:"
    @trains.each do |number, type|
      puts "\nTrain number: #{number}\ntype: #{type}\n "
    end
  end

  def receive_train(number, type)
    @trains[number] = type
  end

  def train_dispatch(number)
    @trains.delete(number)
  end
end
