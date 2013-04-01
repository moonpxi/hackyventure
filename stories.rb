class Stories

  def self.loop
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
  
  def self.fight
    Story.named("Combat") do
      initially :hp => 10, :attack => 6, :defence => 3

      situation(:start) do
        description "A fight will begin!!"

        free_text :anything
        transition :any => :fight
      end

      situation(:fight) do
        description "You are fighting. You have {{hp}} of HP."

        combat "Goblin", :hp => 10, :attack => 5, :defence => 2

        transition :win => :winner,
                   :lose => :looser,
                   :fight => :fight
      end

      situation(:winner) do
        description "You won! :)"
        
        free_text :anything
        transition :any => :end
      end

      situation(:looser) do
        description "You lost... :("
        
        free_text :anything
        transition :any => :end
      end

    end
  end
  
end
