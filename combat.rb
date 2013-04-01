class Combat

  def initialize(enemy, enemy_stats)
    @enemy = enemy
    @hp = enemy_stats[:hp]  
    @attack = enemy_stats[:attack]
    @defence = enemy_stats[:defence]
  end

  def resolve(action, context)
    your_hp = context[:hp] - fight("You", context[:attack], @defence)
    @hp -= fight(@enemy, @attack, context[:defence])


    resolution = :fight
    if your_hp <= 0
      resolution = :lose
    elsif @hp <= 0
      resolution = :win
    end

    Resolution.new(resolution, :hp => your_hp)
  end

 private

  def fight(defender, attack, defence)
   damage = rand(attack) - defence    
   damage = 0 if damage < 0

   Scribe.tell("#{defender} got hit for #{damage} points")
  
   return damage
  end

end
