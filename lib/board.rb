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
  cells.all?{|character| character == "X" || character == "x" || character == "O" || character == "o"}
end

def turn_count
  cells.count{|character| character == "X" || character == "x" || character == "O" || character == "o"}
end

def taken?(character)
  if cells.each{|character| character == " "}
    false
  else
    true
  end
end

end
