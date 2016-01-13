require 'attack'

describe Attack do
subject(:attack) {described_class}
let(:bob) {double(:player)}

  describe '#the_other' do
    it 'damages the player' do
      expect(bob).to receive(:receive_damage)
      attack.the_other_player(bob)
    end
  end

end
