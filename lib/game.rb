class Game

  attr_accessor :player_one, :player_two, :turn

  def initialize
    @player_one
    @player_two
    @turn 
  end

  def ready?
    
  end 

  def over?
  end 

  def has_players?
    has_player_one? and has_player_two?
  end

  def add_player player
    raise "There Are Already Two Players!" if ready?
    @player_one == nil ? @player_one = player : @player_two = player
  end

  def first_turn
    @player_one
  end

  # def switch_turns
  #   @current_player == @player_one ? @current_player= @player_two : @current_player = @player_one
  # end

  def current_player
    # @current_player || player_one
  end

  def has_player_one?
    !player_one.nil?
  end

  def has_player_two?
    !player_two.nil?
  end

end