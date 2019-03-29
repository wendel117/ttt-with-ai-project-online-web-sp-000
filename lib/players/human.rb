module Players
  class Human < Player

    attr_accessor :board

    def move(board)
      puts "Please enter your selection"
      gets.strip
    end

  end


end
