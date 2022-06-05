require 'player'

describe Player do
  subject(:paddy) { Player.new('Paddy') }
  subject(:ben) { Player.new('Ben') }

  describe '#name' do
    it 'returns the name' do
      expect(paddy.name).to eq 'Paddy'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(paddy.hit_points).to eq described_class::DEFAULT_HIT_POINTS #what?
    end
  end

  describe '#attack' do
    it 'damages the player' do 
      expect(ben).to receive(:receive_damage) #why is this method a symbol? What if we could pick from a few moves that change the amount of damage given
      paddy.attack(ben)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect { ben.receive_damage }.to change { ben.hit_points }.by(-10)
    end
  end
end