# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2], #Top Row
    [3,4,5], #Middle Row 
    [6,7,8], #Bottom Row
    [0,3,6], #First Col 
    [1,4,7], #Second Col
    [2,5,8], #Third Col 
    [0,4,8], #Back Diag 
    [2,4,6], #Forward Diag 
  ]
   
def won?(board)
  WIN_COMBINATIONS.each do |win_combination| 
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
 
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]
 
  if position_1 == "X" && position_2 == "X" && position_3 == "X" or position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
      end
   end
   false 
end

def full?(board)
  board.all? do |f|
   f == "X" or f == "O"
end
end

def draw?(board)
  full?(board) && !won?(board)
end
  
def over?(board)
  full?(board) || draw?(board) || won?(board)
end

def winner(board)
  if won?(board)
  return board(WIN_COMBINATIONS)
end
end