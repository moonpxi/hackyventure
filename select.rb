class Select

  attr_reader :options

  def initialize(options)
    @options = options 
  end

  def self.options(options)
    self.new(options)
  end

  def resolve(action)
    selected = @options.key?(action.downcase) ? action.downcase : :other
    Resolution.new(@options[selected])
  end


end
