class Game
 attr_accessor :board, :player_1, :player_2

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
  @board = board
  @player_1 = player_1
  @player_2 = player_2
end

def current_player
  @board.turn_count % 2 == 0 ? player_1 : player_2
end

def won?
  WIN_COMBINATIONS.each {|win_combo|
  index_0 = win_combo[0]
  index_1 = win_combo[1]
  index_2 = win_combo[2]

  position_1 = @board[index_0]
  position_2 = @board[index_1]
  position_3 = @board[index_2]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combo
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combo
  end
}
return false
end

end
