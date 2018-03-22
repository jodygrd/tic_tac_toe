class Game

  def initialize
    @sample_board = ['1 2 3','4 5 6','7 8 9']
    @true_board = [0,0,0,0,0,0,0,0,0]
    @last_move = 0
    @exes = 0
    @ohs = 0
  end

  def play
    puts @sample_board
  end

  def move
    puts 'Which square would you like?'
    @last_move = gets.chomp
    puts @last_move
  end


end

fun = Game.new
fun.play
fun.move
