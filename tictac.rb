# Tic-Tac-Toe Game
# Author: Irtefa
require  'tictac_function.rb'

board = Array.new # Array to set up the board
#used  = Array.new # Array to check if its already used or not

#
# The first user will use 'X' and the second user will use 'O' 
#
#
#
#Initialize the board to
#empty spaces
#


i = 0
until i==9
	board[i] =" "
	used[i]  = false
	i+=1
end


#Method that displays the board
def display(board)
	puts " #{board[0]}   #{board[1]}   #{board[2]} "
	puts "---|---|---"
	puts " #{board[3]}   #{board[4]}   #{board[5]} "
	puts "---|---|---"
	puts " #{board[6]}   #{board[7]}   #{board[8]} "
end

#
# Method that checks if the player wins
#

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

"DRAW"
exit
