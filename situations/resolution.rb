class Resolution

  attr_reader :next, :context

  def initialize(next_situation, context = {})
    @next = next_situation
    @context = context
  end


end
