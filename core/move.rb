class Move
  def initialize(from_square, to_square, promotion=nil)
    self.from_square = from_square
    self.to_square = to_square
    self.promotion = promotion
  end

  def uci
    
  end
end
