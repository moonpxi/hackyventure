class Scribe
  
  def self.header(text)
    length = text.size + 4
    puts "#" * length
    puts "# #{text} #"    
    puts "#" * length
    puts
  end

  def self.situation(text)
    puts "> #{text}"
  end

end
