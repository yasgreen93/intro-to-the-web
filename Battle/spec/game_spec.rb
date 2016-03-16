require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double(:player1)}
  let(:player2) { double(:player2)}

  describe '#attack' do
    it 'allows player 1 to inflict damaged the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end
