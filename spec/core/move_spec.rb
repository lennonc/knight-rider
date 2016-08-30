require_relative "../../core/move.rb"

describe Move do
  describe 'uci' do
    it 'returns a new uci formatted move' do
      move = Move.new('e2', 'e4')
      expect(move.uci).to eq('e2e4')
    end

    it 'returns a move with a promotion if we promote a piece' do
      move = Move.new('e7', 'e8', 'q')
      expect(move.uci).to eq('e7e8q')
    end

    it 'creates a new move from a uci string' do
      uci_string = 'a2a4'
      move = Move.from_uci(uci_string)
      expect(move.uci).to eq('a2a4')
    end

    it 'creates a new move from uci string with a promotion' do
      uci_string = 'a7a8q'
      move = Move.from_uci(uci_string)
      expect(move.uci).to eq('a7a8q')
    end

    it 'creates a null move when we pass a 0000 uci string' do
      uci_string = '0000'
      move = Move.from_uci(uci_string)
      puts move.uci
      expect(move.uci).to eq('0000')
    end

    xit 'raises an error if you pass in an invalid uci string' do
      uci_string = 'asasasas'
      expect(Move.from_uci(uci_string)).to raise_error(ArgumentError, "UCI should be 4 or 5 characters long")
    end
  end
end
