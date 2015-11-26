require_relative "../common/game_constants.rb"

include GameConstants::Piece

class Piece
  def initialize(piece_type, color)
    @piece_type = piece_type
    @color = color
  end

  def symbol
    if @color == WHITE
      SYMBOLS[@piece_type].upcase
    else
      SYMBOLS[@piece_type]
    end
  end

  def unicode_symbol
    if @color == BLACK
      return UNICODE_SYMBOLS[symbol.downcase]
    end
    UNICODE_SYMBOLS[symbol.upcase]
  end
end
