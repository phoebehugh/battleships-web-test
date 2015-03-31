require 'ship'

describe Ship do

  let(:ship) { Ship.new(3) }

  it 'should have a length when created' do
    expect(ship.ship_length).to eq(3)
  end

  it 'should be floating when created' do
    expect(ship.floating?).to be true
  end

  it 'can be hit' do
    expect(ship).to respond_to(:receive_shot)
  end

  it 'knows how many hits it can take' do
    ship.receive_shot
    expect(ship.hits_left).to eq 2
  end

  it 'knows how many hits it can take' do
    ship.receive_shot
    ship.receive_shot
    expect(ship.hits_left).to eq 1
  end

  it 'is not floating if it has no more hits left' do
    (ship.ship_length).times { ship.receive_shot }
    expect(ship.floating?).to eq false
  end

end