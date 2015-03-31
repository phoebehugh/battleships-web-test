require 'cell'

describe Cell do

  let(:cell) { Cell.new Class }
  let(:cell_with_content) { Cell.new Class }
  let(:ship) { double :ship }

  before do
    cell_with_content.content = ship
  end

  it 'is not shot when created' do
    expect(cell.shot?).to be false
    expect(cell).not_to be_shot
  end

  it "has water when created" do
    expect(cell.content.class).to eq Class
  end

  it 'can have content' do
    cell.content = ship
    expect(cell.content).to eq ship
  end

  it 'can be shot at' do
    expect(cell).to respond_to :receive_shot
  end

  it 'shoots at its content when shot at' do
    expect(ship).to receive :hit!
    cell_with_content.receive_shot
  end

  it 'knows that it was shot at' do
    allow(ship).to receive(:hit!)
    cell_with_content.receive_shot
    expect(cell_with_content).to be_shot
  end

  it 'cannot be shot twice' do
    allow(ship).to receive :hit!
    cell_with_content.receive_shot
    expect { cell_with_content.receive_shot }.to raise_error 'Already been shot'
  end

end