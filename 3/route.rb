# frozen_string_literal: true

class Route
  def initialize(initial_station, end_station)
    @initial_station = initial_station
    @end_station = end_station
    @stations = []
  end

  def add_station(stations_name)
    @stations << stations_name
  end

  def remove_station(station_name)
    @stations.delete(station_name)
  end

  def show_route
    stations = []
    stations += @stations
    stations.unshift(@initial_station) << @end_station
    puts 'Stations of route:'
    stations.each { |st| p "Station: #{st}" }
  end
end
