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
    puts "Станции маршрута:"
    stations.each { |st| p "Станция: #{st}" }
  end
end