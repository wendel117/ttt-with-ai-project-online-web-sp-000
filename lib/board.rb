class Board

attr_accessor :cells

def initialize
  reset!
end

def reset!
  @cells = Array.new(9, " ")
  Array
end

def display
  array
end


end
