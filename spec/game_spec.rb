require 'game'

describe Game do
  subject(:game) {described_class.new(vic, bob)}
  let(:bob) {double(:player, name: 'Bob')}
  let(:vic) {double(:player, name: 'Vic')}

describe 'defaults' do

  it 'takes one player on creation' do
    expect(game.player_1.name).to eq('Vic')
  end

  it 'takes two players on creation' do
    expect(game.player_2.name).to eq('Bob')
  end

end


describe '#attack' do
  it 'damages the player' do
    expect(bob).to receive(:receive_damage)
    game.attack(bob)
  end
end


end
