require 'player'

describe Player do
  subject(:player) {described_class.new(name: "Vic")}

  describe '#name' do
    it 'returns it\'s name' do
      expect(player.name).to eq("Vic")
    end
  end

end
