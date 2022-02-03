class Application

  def initialize
    create_player_1
    create_player_2
    Board.new
  end

  def create_player_1
    puts "\s\s\s\s\s\sFirst player shall be named :"
    print "\s\s\s\s\s\s>"
    player1 = gets.chomp
    while player1.empty?
      puts "\s\s\s\s\s\sEnter a name :"
      print "\s\s\s\s\s\s>"
      player1 = gets.chomp
    end
    player1 = Player.new(player1 , "X")
    puts "\n"
    puts "\s\s\s\s\s\s\s\s\s\s\s\s#{player1.name} will play with X's"
    puts "\n"
  end

  def create_player_2
    puts "\s\s\s\s\s\sSecond player shall be named :"
    print "\s\s\s\s\s\s>"
    player2 = gets.chomp
    while player2.empty?
      puts "\s\s\s\s\s\sEnter a name :"
      print "\s\s\s\s\s\s>"
      player2 = gets.chomp
    end
    player2 = Player.new(player2 , "O")
    puts "\n"
    puts "\s\s\s\s\s\s\s\s\s\s\s\s#{player2.name} will play with O's"
    puts "\n"
  end

end
