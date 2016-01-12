require 'game'

describe Game do
subject(:game) {described_class.new}
let(:bob) {double(:player)}
let(:vic) {double(:player)}

describe '#attack' do
  it 'damages the player' do
    expect(bob).to receive(:receive_damage)
    game.attack(bob)
  end
end


end
