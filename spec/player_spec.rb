require 'player'

describe Player do
  subject(:gawain) { Player.new('Gawain') }
  
  describe '#name' do
    it 'returns the name' do
      expect(gawain.name).to eq 'Gawain'
    end
  end
end 