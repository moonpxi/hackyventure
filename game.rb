require_relative "scribe"
require_relative "adventure"


Scribe.header "Hackyventure 0.42.35"

adventure = Adventure.new

adventure.while_not_finished do |situation|
  Scribe.situation situation  
end
