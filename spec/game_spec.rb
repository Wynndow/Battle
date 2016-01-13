require 'game'

describe Game do
  subject(:game) {described_class.new(vic, bob)}
  let(:vic) {double(:player, name: 'Vic')}
  let(:bob) {double(:player, name: 'Bob')}

describe 'defaults' do

  it 'takes one player on creation' do
    expect(game.player_1).to eq(vic)
  end

  it 'takes two players on creation' do
    expect(game.player_2).to eq(bob)
  end

  it 'is initially P1\'s turn to attack' do
    expect(game.whos_turn).to eq(vic)
  end

end

describe '#opponent' do
  it 'returns the opponent' do
    expect(game.opponent).to eq(bob)
  end
end


describe '#switch_turns' do
  it 'changes who\'s turn it is' do
    game.switch_turns
    expect(game.whos_turn).to eq(bob)
  end
end



end
