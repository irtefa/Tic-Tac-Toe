# Tic-Tac-Toe Game
# Author: Irtefa
require  'tictac_function.rb'
require  'minimax.rb'
board = Array.new # Array to set up the board

#
# The first user will use 'X' and the second user will use 'O' 
#
#
#
#Initialize the board to
#empty spaces
#


puts "Welcome to Tic-Tac-Toe"
puts "Choose an option:"
puts "1.Play vs Computer"
puts "2.Play vs Human"


choice = check_option(choice)

puts "You chose option #{choice}"





if  choice == 2
	init_board(board)

	9.times      {
	display(board)
	a= gets.to_i
	a=check_input(a,board)
	player_turn(board,a,1)
	display(board)
	if check_win(board,1)
		puts "Player 1 wins!!"
		exit
	end
	b=gets.to_i
	b=check_input(b,board)
	player_turn(board,b,2)
	if check_win(board,2)
		puts "Player 2 wins!!"
		exit
	end

	}
end

if choice==1
	init_board(board)
	9.times 	{
	display(board)
	puts "Player move"
	a=gets.to_i
	a=check_input(a,board)
	player_turn(board,a,1)
	display(board)
	if check_win(board)
		puts "Player wins!!"
		exit
	end
	if over(board)
		puts "It's a Draw"
		exit
	end
	puts "CPU move"
	if board[4] == " "
		board[4] = 'O'
	else
		b = cpu_move(board,1)
		player_turn(board,b,2)
	end
	if check_win(board)
		display(board)
		puts "Computer wins!!"
		exit
	end
	}
end

"DRAW"
exit
