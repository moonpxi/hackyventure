class FreeTextEntry

  def initialize(key)
    @key = key    
  end

  def self.for(key)
    self.new(key)
  end

  def resolve(action)
    { @key => action, :next => :any }    
  end

end
