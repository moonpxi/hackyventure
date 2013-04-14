class Interaction

  attr_reader :description, :in_progress

  def initialize(description)
    @description = description    
    @in_progress = true
  end

  def act
  end

  def outcome
  end

end
