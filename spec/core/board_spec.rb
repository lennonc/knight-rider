require_relative "../../core/board.rb"

describe Board do
  describe 'initialize' do
    it 'Starts a new game with white to play' do
      board = Board.new()
      expect(board.turn).to eq(GameConstants::Piece::WHITE)
    end
  end

  describe 'moves' do
    before :each do
      @board = Board.new()
    end

    it 'should switch turns' do
      @board.change_turn
      expect(@board.turn).to eql(GameConstants::Piece::BLACK)
    end
  end
end
