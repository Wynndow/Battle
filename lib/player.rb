class Player

  attr_reader :name, :hit_points

  STARTING_HIT_POINTS = 150
  DEFAULT_ATTACK = 20

  def initialize(name:, hit_points: STARTING_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  

  def receive_damage
    @hit_points -= DEFAULT_ATTACK
  end

end
