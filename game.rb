require_relative "scribe"
require_relative "adventure"
require_relative "situation"


Scribe.header "Hackyventure 0.42.35"

adventure = Adventure.new

adventure.while_not_finished do |situation|
  Scribe.describe situation.description  
end
