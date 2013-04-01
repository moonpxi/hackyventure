class Combat

  def initialize(enemy, enemy_stats)
    @enemy
    @hp = enemy_stats[:hp]  
    @attack = enemy_stats[:attack]
    @defence = enemy_stats[:defence]
  end

  def resolve(action, context)
    Resolution.new(:fight)
  end

end
