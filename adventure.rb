class Adventure

  def initialize(situations)
    @situations = situations    
    @current = :start
  end
  
  def while_not_finished
    while @current != :end
      @current = yield @situations[@current]
    end
  end

end
