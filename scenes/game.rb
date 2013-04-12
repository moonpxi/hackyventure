require_relative 'scribe'
require_relative 'story'
require_relative 'scene'

intro_scene = Scene.new('This is an intro', :end)
end_scene = Scene.new('The end', nil)

story = Story.new
story.add_scene(:intro, intro_scene)
story.add_scene(:end, end_scene)

Scribe.header "Hackyventure/SCENE 0.13.98"

Scribe.tell(story.scene(:intro).description)
Scribe.tell(story.scene(:end).description)
