require 'game'

describe Game do
  subject(:game) {described_class.new(vic, bob)}
  let(:vic) {double(:player, name: 'Vic')}
  let(:bob) {double(:player, name: 'Bob')}

describe 'defaults' do

  it 'takes one player on creation' do
    expect(game.player_1.name).to eq('Vic')
  end

  it 'takes two players on creation' do
    expect(game.player_2.name).to eq('Bob')
  end

  it 'is initially P1\'s turn to attack' do
    expect(game.whos_turn).to eq(vic)
  end

end


describe '#attack' do
  it 'damages the player' do
    expect(bob).to receive(:receive_damage)
    game.attack
  end
end

describe '#switch_turns' do
  it 'changes who\'s turn it is' do
    game.switch_turns
    expect(game.whos_turn).to eq(bob)
  end
end



end
