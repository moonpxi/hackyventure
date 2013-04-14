require_relative 'scribe'
require_relative 'story'
require_relative 'scene'
require_relative 'story_runner'
require_relative 'interaction'
require_relative 'any'

just_next_iteraction = Any.new("Type anything to proceed", :next)


story = Story.new

story.add_scene(:intro,
                Scene.new('This is the beginning. Stay calm, it will be over soon.', :next => :choice),
                just_next_iteraction)

story.add_scene(:choice,
                Scene.new('You see two doors. The blue and the red.', :blue => :fight, :red => :loop),
                nil)

story.add_scene(:fight,
                Scene.new('As you open the door you wake up a goblin. He is angry and coming at you.', :win => :end, :die => :dead),
                nil)

story.add_scene(:loop,
                          Scene.new('You are in a loop room.', :loop => :loop, :leave => :end),
                nil)

story.add_scene(:end,
                Scene.new('The End, you survived.', :next => nil),
                just_next_iteraction)

story.add_scene(:dead,
                Scene.new('The End, you died.', :next => nil),
                just_next_iteraction)


runner = StoryRunner.new(story, :intro)
runner.play


