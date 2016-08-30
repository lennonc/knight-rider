require_relative "../common/game_constants.rb"

class Board
  attr_reader :to_play

  def initialize
    setup_board
  end

  def file_index(square)
    square & 7
  end

  def rank_index(square)
    square >> 3
  end

  private

  def setup_board
    @to_play = GameConstants::Piece::WHITE
  end
end
