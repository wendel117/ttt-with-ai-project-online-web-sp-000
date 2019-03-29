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
  puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
  puts "-----------"
  puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
  puts "-----------"
  puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
end

def position(input)
  cells[input.to_i-1] #to_i turns string to integer
end

def full?
  cells.all?{|character| character == "X" || character == "O"}
end

def turn_count
  cells.count{|character| character == "X" || character == "O"}
end

def taken?(input) #using same variable as def position bc we are using it as a helper
  position(input)=="X" || position(input)=="O"
end

def valid_move?(input)
  input.to_i.between?(1, 9) && 
end



end
