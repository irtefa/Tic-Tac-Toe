#
# The Player Turn Method
# Author: Irtefa
#


def player_turn (board,s,t)
	if t==1
		symbol = 'X'
	else
		symbol = 'O'
	end
	board[s] = symbol
end

#
# This method checks if it was a valid input.
#
def check_input (a,board)
	
	while board[a] != " " || a > 8 || a < 0
		puts "Try Again!"
		a = gets.to_i
	end
	return a
end

#
# Check if anyone won!
#

def check_win (board,t)
	bool = false
	if board[0] != " " && board[0]==board[1] && board[1]==board[2]
		bool = true
	elsif board[0] != " " && board[0]==board[3] && board[3]==board[6]
		bool = true
	elsif board[0] != " " && board[0]==board[4] && board[4]==board[8]
		bool = true
	elsif board[2] != " " && board[5]==board[2] && board[5] == board[8]
		bool = true
	elsif board[2] != " " && board[2] == board[4] && board[4] == board[6]
		bool = true
	elsif board[6] != " " && board[6] == board[7] && board[7] == board[8]
		bool = true
	elsif board[1] != " " && board[1] == board[4] && board[4] == board[7]
		bool = true
	elsif board[3] != " " && board[3] == board[4] && board[4] == board[5]
		bool = true
	else
		bool = false
	end

	return bool
end
	
