class Game

  def initialize
    @view_board = ['1','2','3','4','5','6','7','8','9']
    @true_board = [0,0,0,0,0,0,0,0,0]
    @last_move = 0
    @exes = 0
  end

  def display_board
    puts @view_board[0] + '|' +  @view_board[1] + '|'+ @view_board[2]
    puts '-----'
    puts @view_board[3] + '|' +  @view_board[4] + '|' +  @view_board[5]
    puts '-----'
    puts @view_board[6] + '|' +  @view_board[7] + '|' + @view_board[8]
  end

  def move
    display_board
    puts 'Which square would you like?'
    @last_move = gets.chomp
    @true_board[@last_move.to_i-1] = 1
    @view_board[@last_move.to_i-1] = 'X'
    display_board
    score
  end

  def score
    row_1 = @true_board[0] + @true_board[1] + @true_board[2]
    row_2 = @true_board[3] + @true_board[4] + @true_board[5]
    row_3 = @true_board[6] + @true_board[7] + @true_board[8]
    col_1 = @true_board[0] + @true_board[3] + @true_board[6]
    col_2 = @true_board[1] + @true_board[4] + @true_board[7]
    col_3 = @true_board[2] + @true_board[5] + @true_board[8]
    diag_1 = @true_board[0] + @true_board[4] + @true_board[8]
    diag_2 = @true_board[6] + @true_board[4] + @true_board[2]
    scores = [row_1,row_2,row_3,col_1,col_2,col_3,diag_1,diag_2]
    p scores
  end

  def win
    puts "Xs win!"
  end


end

fun = Game.new
fun.move
fun.move
fun.move
