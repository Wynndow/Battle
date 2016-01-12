require 'player'

describe Player do
  subject(:vic) {described_class.new(name: "Vic")}
  subject(:bob) {described_class.new(name: "Bob")}

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

  describe '#attack' do
    it 'damages the player' do
      expect(bob).to receive(:receive_damage)
      vic.attack(bob)
    end
  end

  describe '#recieve_damage' do
    it 'reduces a player\'s HP' do
      expect{ vic.receive_damage }.to change{ vic.hit_points }.by(-Player::DEFAULT_ATTACK)
    end
  end

end
