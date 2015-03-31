class Player

  attr_accessor :name, :own_board

  FLOATING_SHIP = Proc.new { |ship|  ship.floating? }

  def initialize name, own_board
    @name = name
    @own_board = own_board
  end

  def place_ship(ship, coordinate)
    own_board.place_ship(ship, coordinate)
  end

  def receive_shot(coordinate)
    own_board.receive_shot(coordinate)
  end

  def has_floating_ships?
    own_board.ships.any?(&FLOATING_SHIP)
  end 

  def loser?
    !has_floating_ships?
  end

end