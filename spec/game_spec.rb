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

    it 'calls the switch_turn method' do
      expect(game).to receive(:switch_turn)
      game.attack
    end

    it 'switches the turn correctly' do
        game.attack
        expect(test_player_one).to receive(:hit)
        game.attack
    end

  end


  describe '#player_defended' do

    it 'returns the correct defending player at the end of turn one' do
      game.attack
      expect(game.player_defended).to eq test_player_two
    end

    it 'returns the correct defending player at the end of turn two' do
      game.attack
      game.attack
      expect(game.player_defended).to eq test_player_one
    end

  end

  describe '#player_attacked' do

    it 'returns the correct attacking player at the end of turn one' do
      game.attack
      expect(game.player_attacked).to eq test_player_one
    end

    it 'returns the correct attacking player at the end of turn two' do
      game.attack
      game.attack
      expect(game.player_attacked).to eq test_player_two
    end


  end

end
