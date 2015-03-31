require 'water'

describe Water do
  it 'isnt hit when created' do
    expect(subject.has_been_hit).to be false
  end
  it 'can be hit' do
    subject.hit!
    expect(subject.has_been_hit).to be true
  end
end