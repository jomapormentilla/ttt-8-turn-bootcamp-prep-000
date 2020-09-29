def display_board(board)
  puts " #{board[0]} | #{board[0]} | #{board[0]} "
  puts "-----------"
  puts " #{board[0]} | #{board[0]} | #{board[0]} "
  puts "-----------"
  puts " #{board[0]} | #{board[0]} | #{board[0]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  
  if(input.to_i.between?(1, 9))
    move(board, input, "X")
  else
    turn(board)
  end
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
  display_board(board)
end

def position_taken?(board, index)
  if(board[index] == "" || board[index] == " " || board[index] == nil)
    return false
  else
    return true
  end
end
