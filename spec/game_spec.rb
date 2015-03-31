require 'game'

describe Game do

  let(:game) { Game.new }
  let(:player_one) { double :player_one }
  let(:player_two) { double :player_two }
  let(:player) { double :player }
  let(:game_with_two_players) { game }

  before do
    game_with_two_players.add_player player_one
    game_with_two_players.add_player player_two
  end

  it "is not ready when created" do
    expect(game).not_to be_ready
  end

  it "is not over when created" do 
    expect(game).not_to be_over
  end 

  it "has no players when created" do
    expect(game).not_to have_players
  end 

  it "can add the first player" do
    expect(game_with_two_players.player_one).to eq player_one
  end

  it "can add the second player" do
    expect(game_with_two_players.player_two).to eq player_two
  end

  it "knows when it is full" do
    expect(game_with_two_players).to have_players
  end

  it "cannot add another player if it has two players" do
    expect { game_with_two_players.add_player("banana") }.to raise_error "There Are Already Two Players!"
  end

  it "knows that the first player has the first turn" do
    expect(game_with_two_players.current_player).to eq player_one
  end

  it "can switch turns" do
    expect(game_with_two_players).to receive(:switch_turns) { player }
    game_with_two_players.switch_turns
  end

  it "knows who the current player is" do
    expect(game_with_two_players).to receive(:current_player) { player }
    game_with_two_players.current_player
  end

  xit "knows who the opponent is" do
  end

  xit "can fire a shot at opponent" do
    # given we have a game with two players
    # we need doubles for players
    # when the game fires a shot at a coordinate
    # we want that the opponent to receive :receive_shot with that coordinate
  end

end