class Select

  def initialize(options)
    @options = options 
  end

  def self.options(options)
    self.new(options)
  end

  def resolve(action)
    { :next => @options[action.downcase] }
  end


end
