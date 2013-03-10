class Scribe
  
  def header(text)
    length = text.size + 4
    puts "#" * length
    puts "# #{text} #"    
    puts "#" * length
    puts
  end

end
