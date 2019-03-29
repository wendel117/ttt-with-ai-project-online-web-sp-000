module Players
  class Human < Player

    attr_accessor :board
    
    def move(input)
      puts "Please enter your selection"
      gets.strip
      
    end

  end


end
