require_relative "../../core/board.rb"

describe Board do
  describe 'initialize' do
    it 'Starts a new game with white to play' do
      board = Board.new()
      expect(board.to_play).to eq(GameConstants::Piece::WHITE)
    end
  end
end
