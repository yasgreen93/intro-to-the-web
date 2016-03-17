require 'game'

describe Game do
  subject(:game) {described_class.new test_player_one , test_player_two}
  let(:test_player_one) {double :player}
  let(:test_player_two) {double :player}

  describe '#initialize' do

    it 'contains player one' do
      expect(game.player_one).to eq test_player_one
    end

    it 'contains player two' do
      expect(game.player_two).to eq test_player_two
    end

  end

  describe '#attack' do

    it 'calls the method hit on target player' do
      expect(test_player_two).to receive(:hit)
      game.attack(test_player_two)
    end

  end

end
