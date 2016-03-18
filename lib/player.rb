class Player

  def initialize(name)
    @name = name
    @hp = 50
  end

  def name
    @name
  end

  def current_hp
    @hp
  end

  def hit
    @hp -= rand_num
  end

  private

  def rand_num
    Kernel.rand(10)
  end

end
