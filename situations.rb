class Situations

  def self.story
    {
      :start => Situation.new("What is your name?", 
                              FreeTextEntry.for(:name), 
                              { :any => :loop }),

      :loop => Situation.new("Hi {{name}}! Loop?", 
                                            Select.options("yes" => :yes, "no" => :no, :other => :yes), 
                             { :yes => :loop, :no => :end })
    }
  end
  
end
