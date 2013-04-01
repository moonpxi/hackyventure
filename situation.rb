class Situation

  attr_reader :description, :context

  def initialize(description, action_resolver, next_situations)
    @description = description    
    @action_resolver = action_resolver
    @next_situations = next_situations
  end

  def with_context(context)    
    @context = context
  end

  def resolve_with(action)
    resolution = @action_resolver.resolve(action, @context)

    return { :next => @next_situations[resolution.next], 
             :context => resolution.context } 
  end

  def options
    if @action_resolver.respond_to?(:options)
      @action_resolver.options.reject { |name, action| name == :other }
                               .map { |name, action| name }
    else
      []
    end
  end
  
end
