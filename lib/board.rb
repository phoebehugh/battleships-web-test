require_relative 'cell'

class Board

  FLOATING_SHIPS = Proc.new { |ship| ship.floating? }
  
  attr_writer :ships
  attr_reader :ships

  def initialize(cell_class, content_class, width)
    @ships =[]
    @grid = {} 
    ("A"..(64 + width).chr).each do |l|
      (1..width).each { |n| grid["#{l}#{n}".to_sym] = cell_class.new(content_class) }
    end 
  end  

  def grid
    @grid
  end

  def place_ship(ship, coordinate)
    raise "There is already a ship on this cell!" if @grid[coordinate] == ship
    @grid[coordinate] = ship
    ships << ship
  end

  def receive_shot(coordinate)
    @grid[coordinate].receive_shot
  end

  def has_ships?
    !ships.empty?
  end

  def loser?
    !ships.any? &FLOATING_SHIPS
  end

end