require_relative "../../core/piece.rb"

include GameConstants::Piece

describe Piece do
  describe 'initialize' do
    before :each do
      @piece = Piece.new(PAWN, WHITE)
    end

    it "should create the appropriate piece" do
      expect(@piece.symbol).to eq("P")
    end

    it 'should check piece equality' do
      piece_1 = Piece.new(PAWN, WHITE)
      piece_2 = Piece.new(PAWN, WHITE)
      expect(piece_1 == piece_2).to be_truthy
    end

    it 'should return false if pieces are not equal' do
      piece_1 = Piece.new(PAWN, WHITE)
      piece_2 = Piece.new(PAWN, BLACK)
      expect(piece_1 != piece_2).to be_truthy
    end

    context 'unicode_symbol' do
      it 'should retrieve the appropriate unicode_symbol' do
        expect(@piece.unicode_symbol).to eq("♙")
      end

      it 'should retrieve the appropriate unicode_symbol' do
        @piece = Piece.new(PAWN, BLACK)
        expect(@piece.unicode_symbol).to eq("♟")
      end
    end
  end
end
