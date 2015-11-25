include GameConstants::Board

class Board
  attr_reader :to_play

  def initialize
    setup_board
  end

  private

  def setup_board
    @to_play = WHITE
  end
end
