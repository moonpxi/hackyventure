require_relative "scribe"
require_relative "adventure"
require_relative "situation"
require_relative "situations"
require_relative "free_text_entry"


Scribe.header "Hackyventure 0.42.35"

adventure = Adventure.new(Situations.story)

adventure.while_not_finished do |situation|
  Scribe.describe situation.description  

  action = Scribe.ask

  situation.resolve_with(action)
end
