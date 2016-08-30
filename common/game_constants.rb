module GameConstants
  module Board
    # SQUARES = [
    #   A1, B1, C1, D1, E1, F1, G1, H1,
    #   A2, B2, C2, D2, E2, F2, G2, H2,
    #   A3, B3, C3, D3, E3, F3, G3, H3,
    #   A4, B4, C4, D4, E4, F4, G4, H4,
    #   A5, B5, C5, D5, E5, F5, G5, H5,
    #   A6, B6, C6, D6, E6, F6, G6, H6,
    #   A7, B7, C7, D7, E7, F7, G7, H7,
    #   A8, B8, C8, D8, E8, F8, G8, H8
    # ]
    #
    # SQUARES_180 = [
    #   A8, B8, C8, D8, E8, F8, G8, H8,
    #   A7, B7, C7, D7, E7, F7, G7, H7,
    #   A6, B6, C6, D6, E6, F6, G6, H6,
    #   A5, B5, C5, D5, E5, F5, G5, H5,
    #   A4, B4, C4, D4, E4, F4, G4, H4,
    #   A3, B3, C3, D3, E3, F3, G3, H3,
    #   A2, B2, C2, D2, E2, F2, G2, H2,
    #   A1, B1, C1, D1, E1, F1, G1, H1
    # ]

    SQUARE_NAMES = [
      "a1", "b1", "c1", "d1", "e1", "f1", "g1", "h1",
      "a2", "b2", "c2", "d2", "e2", "f2", "g2", "h2",
      "a3", "b3", "c3", "d3", "e3", "f3", "g3", "h3",
      "a4", "b4", "c4", "d4", "e4", "f4", "g4", "h4",
      "a5", "b5", "c5", "d5", "e5", "f5", "g5", "h5",
      "a6", "b6", "c6", "d6", "e6", "f6", "g6", "h6",
      "a7", "b7", "c7", "d7", "e7", "f7", "g7", "h7",
      "a8", "b8", "c8", "d8", "e8", "f8", "g8", "h8"
    ]


    FILES = %w(a b c d e f g h)
    RANKS = %w(1 2 3 4 5 6 7 8)

    STATUS_VALID = 0
    STATUS_NO_WHITE_KING = 1
    STATUS_NO_BLACK_KING = 2
    STATUS_TOO_MANY_KINGS = 4
    STATUS_TOO_MANY_WHITE_PAWNS = 8
    STATUS_TOO_MANY_BLACK_PAWNS = 16
    STATUS_PAWNS_ON_BACKRANK = 32
    STATUS_TOO_MANY_WHITE_PIECES = 64
    STATUS_TOO_MANY_BLACK_PIECES = 128
    STATUS_BAD_CASTLING_RIGHTS = 256
    STATUS_INVALID_EP_SQUARE = 512
    STATUS_OPPOSITE_CHECK = 1024

    CASTLING_NONE = 0
    CASTLING_WHITE_KINGSIDE = 1
    CASTLING_BLACK_KINGSIDE = 2
    CASTLING_WHITE_QUEENSIDE = 4
    CASTLING_BLACK_QUEENSIDE = 8
    CASTLING_WHITE = CASTLING_WHITE_KINGSIDE | CASTLING_WHITE_QUEENSIDE
    CASTLING_BLACK = CASTLING_BLACK_KINGSIDE | CASTLING_BLACK_QUEENSIDE
    CASTLING = CASTLING_WHITE | CASTLING_BLACK

    BB_VOID = 0b0000000000000000000000000000000000000000000000000000000000000000
    BB_ALL = 0b1111111111111111111111111111111111111111111111111111111111111111

  end

  module Piece
    PAWN = 1
    KNIGHT = 2
    BISHOP = 3
    ROOK = 4
    QUEEN = 5
    KING = 6

    SYMBOLS = ["", "p", "n", "b", "r", "q", "k"]
    TYPES = [PAWN, KNIGHT, BISHOP, ROOK, QUEEN, KING]
    WHITE, BLACK = 0, 1

    UNICODE_SYMBOLS = {
      "R" => "♖",
      "r" => "♜",
      "N" => "♘",
      "n" => "♞",
      "B" => "♗",
      "b" => "♝",
      "Q" => "♕",
      "q" => "♛",
      "K" => "♔",
      "k" => "♚",
      "P" => "♙",
      "p" => "♟",
    }
  end
end
