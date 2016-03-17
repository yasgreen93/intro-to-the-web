class Game

  attr_reader :player_one , :player_two

  def initialize player_1, player_2
    @player_one_turn = true
    @player_one = player_1
    @player_two = player_2
  end

  def attack
    if @player_one_turn
      @player_two.hit
    else
      @player_one.hit
    end
    switch_turn
  end

  def switch_turn
    @player_one_turn = !@player_one_turn
  end

end
