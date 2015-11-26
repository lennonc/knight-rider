require_relative "../common/game_constants.rb"

include GameConstants::Piece

class Board
  attr_reader :to_play

  def initialize
    setup_board
  end

  def turn
    @to_play
  end

  def change_turn
    @to_play == BLACK ? @to_play = WHITE : @to_play = BLACK
  end
  
  private

  def setup_board
    @to_play = WHITE
  end
end
