require_relative 'cell'
require_relative 'water'

class Ship
  attr_reader :hits_left, :ship_length

  def initialize (ship_length)
    @floating = true
    @hits_left = ship_length
    @ship_length = ship_length
  end

  def floating?
    @floating
  end

  def receive_shot
    # @number_of_hits += 1
    # sunk?
    damage_ship!
    sink_ship! if no_hits_left?
  end

  private

  def sink_ship!
    @floating = false
  end

  def damage_ship!
    @hits_left -= 1
  end

  def no_hits_left?
    @hits_left == 0
  end
end