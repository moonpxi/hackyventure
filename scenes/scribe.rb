class Scribe
  
  def self.header(text)
    length = text.size + 4
    puts "#" * length
    puts "# #{text} #"    
    puts "#" * length
    puts
  end

  def self.describe(situation)
    puts
    puts Mustache.render(situation.description, situation.context)
    situation.options.each do |option|
      puts "- #{option}"
    end
  end

  def self.ask
    print "> "
    return gets.chomp
  end

  def self.tell(message)
    puts message
  end

end
