class Story

  attr_reader :name, :situations, :initial_context

  def initialize(name)
    @name = name
    @situations = {}
    @initial_context = {}
  end

  def self.named(name, &blk)
    story = Story.new(name)
    story.instance_eval &blk
    story
  end

  def situation(id, &blk)
    builder = SituationBuilder.new
    builder.instance_eval &blk
    @situations[id] = builder.situation
  end

  def initially(context)
    @initial_context = context
  end

end

class SituationBuilder

  def description(desc)
    @description = desc
  end
  
  def free_text(to_variable)
    @resolver = FreeTextEntry.new(to_variable)
  end

  def options(opts)
    @resolver = Select.options(opts)
  end

  def combat(enemy, enemy_stats)
    @resolver = Combat.new(enemy, enemy_stats)
  end

  def transition(transitions)
    @transitions = transitions    
  end

  def situation
    Situation.new(@description, @resolver, @transitions)
  end

end
