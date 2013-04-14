class Any < Interaction

  def initialize(description, next_scene)
    super(description)
    @next_scene = next_scene    
  end

  def outcome
    @next_scene
  end


end
