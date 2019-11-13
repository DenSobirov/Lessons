# frozen_string_literal: true

# class Trains
class Train
  attr_accessor :speed
  attr_reader :coach_count

  def initialize(number, type, coach_count)
    @number = number
    @type = type
    @coach_count = coach_count
  end

  def stop
    self.speed = 0
  end

  def hook_coach
    @coach_count += 1 if @speed.zero?
  end

  def unhook_coach
    @coach_count -= 1 if @speed.zero?
  end
end
