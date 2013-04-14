
class Story

  def initialize
    @scenes = {}    
    @interactions = {}    
  end

  def add_scene(id, scene, interaction)
    @scenes[id] = scene
    @interactions[id] = interaction
  end
  
  def scene(id)
    @scenes[id]
  end

  def interaction(id)
    @interactions[id]    
  end


end
