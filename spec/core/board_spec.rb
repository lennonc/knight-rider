require_relative "../../core/board.rb"

describe Board do
  describe 'initialize' do
    it 'should create a board with white to play' do
      board = Board.new()
      expect(board.to_play).to be(0)
    end
  end
end
