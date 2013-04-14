class StoryRunner

  def initialize(story, starting_scene)
    @story = story
    @current_scene = starting_scene
  end

  def play
    Scribe.header "Hackyventure/SCENE 0.13.98"

    while @current_scene
      scene = @story.scene(@current_scene)
      interaction = @story.interaction(@current_scene)

      Scribe.tell(scene.description)

      while interaction.not_over
        Scribe.tell(interaction.description)

        action = Scribe.ask

        interaction.act(action)
      end

      @current_scene = scene.sequel_for(interaction.outcome)
    end
  end


end
