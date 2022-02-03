class Game

  attr_accessor :players, :board

  def initialize

    puts "\s"*6 + "What's the first player's name ?"
    print "\s"*6 + ">"
    player1_name = gets.chomp
    player1 = Player.new(player1_name , "X")
    puts "\n"

    puts "\s"*6 + "What's the second player's name ?"
    print "\s"*6 + ">"
    player2_name = gets.chomp
    player2 = Player.new(player2_name , "O")
    puts "\n"


    @players = [player1, player2]
    @board = Board.new
  end

  def gameplay
    9.times do |i|
      if @board.victory? == 0
        turn(i)
      elsif @board.victory? == 1
        puts "#{@players[0].name} wins !"
      elsif @board.victory? == 2
        puts "#{@players[1]. name} wins !"
      else
        puts "Draw."
      end
    end
  end

  def turn(i)
    n = i % 2
    puts "#{players[n].name}, which square would you like to fill ?"
    puts "Choose a number between 1 and 9 (square A1 = 1 and so on)."
    choice = gets.chomp.to_i

    while !choice.between?(1,9) || (@board.square_filled?(choice) == true)
      puts "This square is already filled or doesn't exist."
      puts "Which square would you like to fill ?"
      puts "Choose a number between 1 and 9 (square A1 = 1 and so on)."
      choice = gets.chomp.to_i
    end
    @board.play(choice, @players[n].symbol)
    @board.display_board
  end

end
