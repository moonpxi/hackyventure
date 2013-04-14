class StoryRunner

  def initialize(story, current_scene)
    @story = story
    @current_scene = current_scene
  end

  def play
    Scribe.header "Hackyventure/SCENE 0.13.98"

    Scribe.tell(@story.scene(:intro).description)
    Scribe.tell(@story.scene(:end).description)
  end


end
