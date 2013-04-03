class FreeTextEntry

  def initialize(key)
    @key = key    
  end

  def self.for(key)
    self.new(key)
  end

  def resolve(action, context)
    Resolution.new(:any, @key => action)
  end

end
