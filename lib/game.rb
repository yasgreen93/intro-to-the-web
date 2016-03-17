class Game

  attr_reader :player_one , :player_two

  def initialize player_1, player_2
    @player_one = player_1
    @player_two = player_2
  end

  def attack target
    target.hit
  end

end
