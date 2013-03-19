class Adventure

  def initialize(story)
    @situations = story.situations    
    @current = :start
    @context = {}
  end
  
  def while_not_finished
    while @current != :end
      current_situation = @situations[@current]
      current_situation.with_context(@context)

      resolution = yield current_situation

      @current = resolution[:next]
      @context.merge!(resolution[:context])
    end
  end

end
