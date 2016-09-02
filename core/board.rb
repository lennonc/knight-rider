require_relative "../common/game_constants.rb"
require_relative "../modules/board_utils.rb"

include BoardUtils
include GameConstants::Board
include GameConstants::Piece

class Board
  attr_reader :to_play
  attr_reader :light_squares
  attr_reader :dark_squares
  attr_reader :files
  attr_reader :ranks

  def initialize
    @light_squares = @dark_squares = BB_VOID
    setup_board
  end

private
  def setup_board
    @to_play = WHITE
    @files = bb_files
    @ranks = bb_ranks
    setup_light_and_dark_squares
  end

  def setup_light_and_dark_squares
    BB_SQUARES.each_with_index do |mask, index|
      if (file_index(index) + rank_index(index)) % 2 == 0
        @light_squares |= mask
      else
        @dark_squares |= mask
      end
    end
  end
end
