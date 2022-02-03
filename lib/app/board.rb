class Board

  attr_accessor :board_case_array

  def initialize
    @board_case_array = []
    @a1 = BoardCase.new(0 ,"")
    @a2 = BoardCase.new(0 ,"")
    @a3 = BoardCase.new(0 ,"")
    @b1 = BoardCase.new(0 ,"")
    @b2 = BoardCase.new(0 ,"")
    @b3 = BoardCase.new(0 ,"")
    @c1 = BoardCase.new(0 ,"")
    @c2 = BoardCase.new(0 ,"")
    @c3 = BoardCase.new(0 ,"")

    @board_case_array << @a1 << @a2 << @a3 << @b1 << @b2 << @b3 << @c1 << @c2 << @c3

    display_board

  end

  def display_board
    puts "-"*16
    puts ["|" "\s\s\s\s" "|" "\s\s\s\s" "|" "\s\s\s\s" "|"]
    puts "-"*16
    puts ["|" "\s\s\s\s" "|" "\s\s\s\s" "|" "\s\s\s\s" "|"]
    puts "-"*16
    puts ["|" "\s\s\s\s" "|" "\s\s\s\s" "|" "\s\s\s\s" "|"]
    puts "-"*16
  end

end
