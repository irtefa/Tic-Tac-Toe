#
# This program is the AI for 
# the computer.
#
#
# Consider each possible move
# Determine each child grid
# Score each child grid by calling minimax recursively
# Score Parent grid
# Computer'r turn:
# 	Choose move that yields maximum score
# Human's turn:
# 	Choose move that yields lowest score
require 'tictac_function.rb'


def cpu_move(board,a)
	gamestate = Array.new
	i=0
	gamestate = board.clone
	maxval = -9999
	maxmove = -1
	i = 0
	9.times{
		if !check_invalid(gamestate,i)
			gamestate = board.clone
			gamestate[i] = 'O'
			val = check_move(gamestate, 1-a)
			#puts "#{i} #{val}"
			if val>maxval
				maxval = val
				maxmove = i
			end
		end
	i+=1
	}

	return maxmove
end

def check_move(gamestate,player)
	val = Array.new

	if check_win_arg(gamestate,'O')
		return 512
	end
	if check_win_arg(gamestate,'X')
		return -512
	end
	i=0

	9.times{
		val[i]=0
		if !check_invalid(gamestate,i)

			new_state = gamestate.clone	
			#display(gamestate)
			#sleep 2
	
			if player==0 
				new_state[i]='X'
			else
				new_state[i]='O'
			end
		
			new_player = 1 - player

			val[i] = check_move(new_state,new_player)/2
		end
	i+=1
	}

	if player == 1
		return val.max
	end

	return val.min
end

def check_invalid(gamestate,i)
	if gamestate[i] == 'X' || gamestate[i]=='O'
		return true
	end
 	return false
end
