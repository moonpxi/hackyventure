
class Story

  def initialize
    @scenes = {}    
  end

  def add_scene(id, scene)
    @scenes[id] = scene
  end
  
  def scene(id)
    @scenes[id]
  end


end
