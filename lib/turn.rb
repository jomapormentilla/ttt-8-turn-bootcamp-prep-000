def display_board(board)
  puts " #{board[0]} | #{board[0]} | #{board[0]} "
  puts "-----------"
  puts " #{board[0]} | #{board[0]} | #{board[0]} "
  puts "-----------"
  puts " #{board[0]} | #{board[0]} | #{board[0]} "
end

def valid_move?(board, index)
  if( index.between(0, 8) && !position_taken?(board, index) )
    return true
  else
    return false
  end
end

def move(board, input, player="X")
  index = input.to_i - 1
  board[index] = player
end

def position_taken?(board, index)
  if(board[index] == "" || board[index] == " " || board[index] == nil)
    return false
  else
    return true
  end
end
