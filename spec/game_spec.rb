require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:test_player) { double :player}

  describe '#attack' do

    it 'calls the method hit on target player' do
      expect(test_player).to receive(:hit)
      game.attack(test_player)
    end

  end

end
