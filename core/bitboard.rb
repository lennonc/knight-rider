class BitBoard
  def initialize
    @pseudolegal_moves = PseudoLegalMoveGenerator.new(self)
  end
end
