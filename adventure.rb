class Adventure

  def initialize(situations)
    @situations = situations    
    @current = :start
    @context = {}
  end
  
  def while_not_finished
    while @current != :end
      resolution = yield @situations[@current]

      @current = resolution[:next]
      @context.merge!(resolution[:context])
    end
  end

end
