class Stories

  def self.dsl_loop
    Story.named("Fancy DSL for looping") do
      situation(:start) do
        description "What is your name?" 

        free_text :name 
        transition :any => :loop
      end

      situation(:loop) do
        description "Hi {{name}}! Loop?"

        options "yes" => :yes,
                "no" => :no,
                :other => :yes

        transition :yes => :loop,
                   :no => :end
      end
    end
  end
  
end
