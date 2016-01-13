require 'player'

describe Player do
  subject(:vic) {described_class.new("Vic")}
  subject(:bob) {described_class.new("Bob")}

  describe '#name' do
    it 'returns it\'s name' do
      expect(vic.name).to eq("Vic")
    end
  end

  describe 'by default' do
    it 'has hit points' do
      expect(vic.hit_points).to eq(Player::STARTING_HIT_POINTS)
    end
  end

  describe '#receive_damage' do
    it 'reduces a player\'s HP by a random amount' do
      allow(Kernel).to receive(:rand).and_return(10)
      expect{ vic.receive_damage }.to change{ vic.hit_points }.by(-10)
    end
  end

end
