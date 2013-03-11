class Scribe
  
  def self.header(text)
    length = text.size + 4
    puts "#" * length
    puts "# #{text} #"    
    puts "#" * length
    puts
  end

  def self.describe(text)
    puts text
  end

  def self.ask
    print "> "
    return gets.chomp
  end

end
