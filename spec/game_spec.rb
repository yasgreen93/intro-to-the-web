require 'game'

describe Game do
  subject(:game) {described_class.new test_player_one , test_player_two}
  let(:test_player_one) {double :player, hit: nil}
  let(:test_player_two) {double :player, hit: nil}

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
      game.attack
    end

    it 'calls the switch turn method on itself' do
      expect(game).to receive(:switch_turn)
      game.attack
    end

    it 'switches turns correctly' do
      game.attack
      expect(test_player_one).to receive(:hit)
      game.attack
    end

  end

end
