class Situation

  attr_reader :description

  def initialize(description)
    @description = description    
  end

  def resolve_with(action)
    { :next => :loop, :context => {} } 
  end
  
end
