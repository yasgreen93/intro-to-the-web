require 'player'

describe Player do
  subject(:test_player) { described_class.new('test_player') }
  it { is_expected.to respond_to :name }

end
