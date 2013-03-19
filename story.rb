class Story

  attr_reader :name, :situations

  def initialize(name)
    @name = name
    @situations = {}
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

  def transition(transitions)
    @transitions = transitions    
  end

  def situation
    Situation.new(@description, @resolver, @transitions)
  end
end
