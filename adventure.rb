class Adventure
  
  def while_not_finished
    yield Situation.new("What is your name?")
  end

end
