#
# Helper Functions
# Author: Irtefa
#

def check_option(a)
	a = gets.to_i
	while a>2 || a<1
		puts "Invalid choice!"
		puts "Choose again!"
		a = gets.to_i
	end

	return a
end



#Method that displays the board

def display(board)
        puts " #{board[0]}   #{board[1]}   #{board[2]} "
        puts "---|---|---"
        puts " #{board[3]}   #{board[4]}   #{board[5]} "
        puts "---|---|---"
       	puts " #{board[6]}   #{board[7]}   #{board[8]} "

	puts "Grid Help"
	puts "0|1|2"
	puts "-|-|-"
	puts "3|4|5"
	puts "-|-|-"
	puts "6|7|8"
end


def init_board(board)
  i = 0
    until i==9
            board[i] =" "
	    i+=1
    end
end


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
def over(board)
	i=0
	9.times{
	if board[i]==" "
		return false
	end
	i+=1
	}
	return true
end

#
# Check if anyone won!
#

def check_win (board)
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

def check_win_arg(board,arg)

 	bool = false

        if board[0] == arg && board[0]==board[1] && board[1]==board[2]
		bool = true 
	elsif board[0] == arg && board[0]==board[3] && board[3]==board[6]
		bool = true
	elsif board[0] == arg && board[0]==board[4] && board[4]==board[8]
		bool = true
	elsif board[2] == arg && board[5]==board[2] && board[5] == board[8]
		bool = true
	elsif board[2] == arg && board[2] == board[4] && board[4] == board[6]
		bool = true
	elsif board[6] == arg && board[6] == board[7] && board[7] == board[8]
		bool = true
	elsif board[1] == arg && board[1] == board[4] && board[4] == board[7]
		bool = true
	elsif board[3] == arg && board[3] == board[4] && board[4] == board[5]
		bool = true
	else
		bool = false
	end
	
	return bool
end

class Array; def sum; inject( nil ) { |sum,x| sum ? sum+x : x }; end; end

