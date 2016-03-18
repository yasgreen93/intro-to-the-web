require 'player'

describe Player do
  subject(:test_player) { described_class.new('test_player') }
  it { is_expected.to respond_to :name }

  describe '#current_hp' do

    it 'returns the current player hp' do
      expect(test_player.current_hp).to eq 50
    end

  end

  describe '#hit' do

    it 'reduces the attacked player hp' do
      allow(Kernel).to receive(:rand).and_return(5)
      expect{test_player.hit}.to change{test_player.current_hp}.by -5
    end

  end

end
