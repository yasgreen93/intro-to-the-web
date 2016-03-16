require 'game'

describe Game do

  subject(:game) { described_class.new(player1,player2) }
  let(:player1) { double(:player1)}
  let(:player2) { double(:player2)}

  describe '#attack' do
    it 'allows player 1 to inflict damaged the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#initialize' do
    it 'should have player 1' do
      expect(game.player1).to eq player1
    end

    it 'should have player 2' do
      expect(game.player2).to eq player2
    end
  end
end
