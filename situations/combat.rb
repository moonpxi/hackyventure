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


    resolution = if your_hp <= 0
      :lose
    elsif @hp <= 0
      :win
    else
      :fight
    end

    Resolution.new(resolution, :hp => your_hp, :enemy_hp => @hp)
  end

 private

  def fight(defender, attack, defence)
   damage = rand(attack) - defence    
   damage = 0 if damage < 0

   Scribe.tell("#{defender} got hit for #{damage} points")
  
   return damage
  end

end
