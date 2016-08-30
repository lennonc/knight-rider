require_relative "../common/game_constants.rb"

include GameConstants::Board
include GameConstants::Piece

class Move
  def initialize(from_square, to_square, promotion=nil)
    @from_square = from_square
    @to_square = to_square
    @promotion = promotion
  end

  # Get a uci string for the move
  def uci
    return '0000' if @from_square.nil? || @to_square.nil?

    from_index = SQUARE_NAMES.index(@from_square)
    to_index = SQUARE_NAMES.index(@to_square)
    promotion_index = SYMBOLS.index(@promotion)
    move = SQUARE_NAMES[from_index] + SQUARE_NAMES[to_index]
    @promotion ? move + SYMBOLS[promotion_index] : move
  end

  # Parse a UC
  def self.from_uci(uci)
    return self.null_move if uci == '0000'

    from_square = uci[0..1]
    to_square = uci[2..3]
    if uci.length == 4
      return Move.new(from_square, to_square)
    elsif uci.length == 5
      promotion = uci[4]
      return Move.new(from_square, to_square, promotion)
    else
      raise(ArgumentError, "UCI should be 4 or 5 characters long")
    end

  end

  def self.null_move
    return Move.new(nil, nil, nil)
  end
end
