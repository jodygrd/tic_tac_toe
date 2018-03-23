class Game

  def initialize
    @view_board = ['1','2','3','4','5','6','7','8','9']
    @true_board = [0,0,0,0,0,0,0,0,0]
    @last_move = 0
    @last_player = 'O'
    @game_over = false
  end

  def display_board
    puts @view_board[0] + '|' +  @view_board[1] + '|'+ @view_board[2]
    puts '-----'
    puts @view_board[3] + '|' +  @view_board[4] + '|' +  @view_board[5]
    puts '-----'
    puts @view_board[6] + '|' +  @view_board[7] + '|' + @view_board[8]
  end

  def moveX
    puts 'Player X: Which square would you like?'
    @last_move = gets.chomp
    @true_board[@last_move.to_i-1] = 1
    @view_board[@last_move.to_i-1] = 'X'
    @last_player = 'X'
  end

  def moveO
    puts 'Player O: Which square would you like?'
    @last_move = gets.chomp
    @true_board[@last_move.to_i-1] = -1
    @view_board[@last_move.to_i-1] = 'O'
    @last_player = 'O'
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
    @scores = [row_1,row_2,row_3,col_1,col_2,col_3,diag_1,diag_2]
    p @scores
  end

  def check
    if @scores.include? 3
      @game_over = true
      puts "Xs win!"
    elsif @scores.include? -3
      @game_over = true
      puts "Os win!"
    elsif !@true_board.include? 0
      @game_over = true
      puts "MEOW!"
    end
  end

  def play
    puts "Let's play tic-tac-toe!"
    display_board
    # Play 5 moves before checking for a winner
    5.times do
      @last_player == 'O' ? moveX : moveO
    end

    #Continue playing until win or draw
    check
    until @game_over == true
      @last_player == 'O' ? moveX : moveO
    end


  end


end

fun = Game.new
fun.play
