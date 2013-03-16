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
    resolution_context = @action_resolver.resolve(action)

    { :next => @next_situations[resolution_context[:next]], :context => resolution_context } 
  end
  
end
