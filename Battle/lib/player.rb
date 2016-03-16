class Player
  attr_reader :name, :hit_points

  DEFAULT_POINTS = 30

  def initialize(name, hit_points = DEFAULT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= 5
  end
end
