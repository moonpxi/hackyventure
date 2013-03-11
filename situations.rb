class Situations

  def self.story
    {
      :start => Situation.new("What is your name?"),
      :loop => Situation.new("Loop?")
    }
  end
  
end
