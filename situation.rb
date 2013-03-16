class Situation

  attr_reader :description

  def initialize(description, action_resolver, next_situations)
    @description = description    
    @action_resolver = action_resolver
    @next_situations = next_situations
  end

  def with_context(context)    
    @context = context
  end

  def resolve_with(action)
    resolution = @action_resolver.resolve(action)

    return { :next => @next_situations[resolution.next], 
             :context => resolution.context } 
  end
  
end
