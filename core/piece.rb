require_relative "../common/game_constants.rb"

class Piece
  def initialize(piece_type, color)
    self.piece_type = piece_type
    self.color = color
  end

  def symbol
    if self.color = GameConstants::PIECE::WHITE
      GameConstants::PIECE::TYPE[self.piece_type - 1].upcase
    else
      GameConstants::PIECE::TYPE[self.piece_type - 1]
    end
  end

  def unicode_symbol(invert_color=false)
    unless invert_color
      return GameConstants::PIECE::UNICODE_SYMBOLS[self.piece_type - 1]
    end
    GameConstants::PIECE::UNICODE_SYMBOLS[self.piece_type - 1].swapcase
  end
end
