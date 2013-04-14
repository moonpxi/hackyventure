require_relative 'scribe'
require_relative 'story'
require_relative 'scene'



story = Story.new

story.add_scene(:intro,
                Scene.new('This is the beginning. Stay calm, it will be over soon.', :next => :choice))

story.add_scene(:choice,
                Scene.new('You see two doors. The blue and the red.', :blue => :fight, :red => :loop))

story.add_scene(:fight,
                Scene.new('As you open the door you wake up a goblin. He is angry and coming at you.', :win => :end, :die => :dead))

story.add_scene(:loop,
                          Scene.new('You are in a loop room.', :loop => :loop, :leave => :end))

story.add_scene(:end,
                Scene.new('The End, you survived.', nil))

story.add_scene(:dead,
                Scene.new('The End, you died.', nil))

Scribe.header "Hackyventure/SCENE 0.13.98"

Scribe.tell(story.scene(:intro).description)
Scribe.tell(story.scene(:end).description)
