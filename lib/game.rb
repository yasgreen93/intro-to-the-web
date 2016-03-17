class Game

  attr_reader :player_one , :player_two

  def initialize player_1, player_2
    @player_one_turn = true
    @player_one = player_1
    @player_two = player_2
  end

  def attack
    attack_player
    switch_turn
  end

  private

  def switch_turn
    @player_one_turn = !@player_one_turn
  end

  def attack_player
    @player_one_turn ? @player_two.hit : @player_one.hit
  end

end
