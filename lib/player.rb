class Player

  def initialize(name)
    @name = name
    @hp = 100
  end

  def name
    @name
  end

  def current_hp
    @hp
  end

  def hit
    @hp -= 10
  end

end
