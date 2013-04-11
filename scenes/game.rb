require_relative 'scribe'
require_relative 'story'
require_relative 'scene'

story = Story.new
story.add_scene(:intro, Scene.new('This is an intro'))

Scribe.header "Hackyventure/SCENE 0.13.98"

Scribe.tell(story.scene(:intro).description)
