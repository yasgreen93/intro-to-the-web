class Game

  attr_reader :player_one , :player_two , :player_attacked , :player_defended

  def initialize player_1, player_2
    @player_one_turn = false
    @player_one = player_1
    @player_two = player_2
    @player_attacked = @player_two
    @player_defended = @player_one
    @game_active = true
  end

  def attack
    switch_turn
    attack_player
    check_life(@player_defended)
  end

  private

  def switch_turn
    @player_one_turn = !@player_one_turn

    temp = @player_attacked
    @player_attacked = @player_defended
    @player_defended = temp
  end

  def attack_player
    @player_one_turn ? @player_two.hit : @player_one.hit
  end

  def check_life(player_defended)
    if player_defended.current_hp < 1
      @game_active = false
    end
  end

end
