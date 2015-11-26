require_relative "../../core/piece.rb"

include GameConstants::Piece

describe Piece do
  describe 'initialize' do
    before (:each) do
      @piece = Piece.new(PAWN, WHITE)
    end

    it "should create the appropriate piece" do
      expect(@piece.symbol).to eq("P")
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
