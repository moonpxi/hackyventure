require "mustache"
require_relative "scribe"
require_relative "adventure"
require_relative "situation"
require_relative "story"
require_relative "stories"
require_relative "resolution"
require_relative "free_text_entry"
require_relative "select"
require_relative "combat"


Scribe.header "Hackyventure 0.42.35"

adventure = Adventure.new(Stories.fight)

adventure.while_not_finished do |situation|
  Scribe.describe situation

  action = Scribe.ask

  situation.resolve_with(action)
end
