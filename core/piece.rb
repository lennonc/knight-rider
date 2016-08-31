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

  def piece_type
    @piece_type
  end

  def color
    @color
  end

  def ==(other)
    begin
      @piece_type == other.piece_type && @color == other.color
    rescue StandardError
      false
    end
  end

  def !=(other)
    return !(self.==(other))
  end


  def unicode_symbol
    if @color == BLACK
      return UNICODE_SYMBOLS[symbol.downcase]
    end
    UNICODE_SYMBOLS[symbol.upcase]
  end

  def to_s
    self.symbol
  end

  def self.from_symbol(symbol)
    if symbol.lcase == symbol
      return Piece.new(SYMBOLS[symbol], BLACK)
    else
      return Piece.new(SYMBOLS[symbol], WHITE)
    end
  end
end
