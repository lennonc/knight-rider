module GameConstants
  module Board
    A1 = 0; B1 = 1 ; C1 = 2; D1 = 3; E1 = 4; F1 = 5; G1 = 6; H1 = 7;
    A2 = 8; B2 = 9; C2 = 10; D2 = 11; E2 = 12; F2 = 13; G2 = 14; H2 = 15;
    A3 = 16; B3 = 17; C3 = 18; D3 = 19; E3 = 20; F3 = 21; G3 = 22; H3 = 23;
    A4 = 24; B4 = 25; C4 = 26; D4 = 27; E4 = 28; F4 = 29; G4 = 30; H4 = 31;
    A5 = 32; B5 = 33; C5 = 34; D5 = 35; E5 = 36; F5 = 37 ;G5 = 38; H5 = 39;
    A6 = 40; B6 = 41; C6 = 42; D6 = 43; E6 = 44; F6 = 45; G6 = 46; H6 = 47;
    A7 = 48; B7 = 49; C7 = 50; D7 = 51; E7 = 52; F7 = 53; G7 = 54; H7 = 55;
    A8 = 56; B8 = 57; C8 = 58; D8 = 59; E8 = 60; F8 = 61; G8 = 62; H8 = 63

    SQUARES = [
      A1, B1, C1, D1, E1, F1, G1, H1,
      A2, B2, C2, D2, E2, F2, G2, H2,
      A3, B3, C3, D3, E3, F3, G3, H3,
      A4, B4, C4, D4, E4, F4, G4, H4,
      A5, B5, C5, D5, E5, F5, G5, H5,
      A6, B6, C6, D6, E6, F6, G6, H6,
      A7, B7, C7, D7, E7, F7, G7, H7,
      A8, B8, C8, D8, E8, F8, G8, H8
    ]

    SQUARES_L90 = [
      H1, H2, H3, H4, H5, H6, H7, H8,
      G1, G2, G3, G4, G5, G6, G7, G8,
      F1, F2, F3, F4, F5, F6, F7, F8,
      E1, E2, E3, E4, E5, E6, E7, E8,
      D1, D2, D3, D4, D5, D6, D7, D8,
      C1, C2, C3, C4, C5, C6, C7, C8,
      B1, B2, B3, B4, B5, B6, B7, B8,
      A1, A2, A3, A4, A5, A6, A7, A8
    ]

    SQUARES_R45 = [
      A1, B8, C7, D6, E5, F4, G3, H2,
      A2, B1, C8, D7, E6, F5, G4, H3,
      A3, B2, C1, D8, E7, F6, G5, H4,
      A4, B3, C2, D1, E8, F7, G6, H5,
      A5, B4, C3, D2, E1, F8, G7, H6,
      A6, B5, C4, D3, E2, F1, G8, H7,
      A7, B6, C5, D4, E3, F2, G1, H8,
      A8, B7, C6, D5, E4, F3, G2, H1
    ]

    SQUARES_L45 = [
      A2, B3, C4, D5, E6, F7, G8, H1,
      A3, B4, C5, D6, E7, F8, G1, H2,
      A4, B5, C6, D7, E8, F1, G2, H3,
      A5, B6, C7, D8, E1, F2, G3, H4,
      A6, B7, C8, D1, E2, F3, G4, H5,
      A7, B8, C1, D2, E3, F4, G5, H6,
      A8, B1, C2, D3, E4, F5, G6, H7,
      A1, B2, C3, D4, E5, F6, G7, H8
    ]

    SQUARES_180 = [
      A8, B8, C8, D8, E8, F8, G8, H8,
      A7, B7, C7, D7, E7, F7, G7, H7,
      A6, B6, C6, D6, E6, F6, G6, H6,
      A5, B5, C5, D5, E5, F5, G5, H5,
      A4, B4, C4, D4, E4, F4, G4, H4,
      A3, B3, C3, D3, E3, F3, G3, H3,
      A2, B2, C2, D2, E2, F2, G2, H2,
      A1, B1, C1, D1, E1, F1, G1, H1
    ]

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

    BB_SQUARES = SQUARES.map do |square|
      1 << square
    end

    (
      BB_A1, BB_B1, BB_C1, BB_D1, BB_E1, BB_F1, BB_G1, BB_H1,
      BB_A2, BB_B2, BB_C2, BB_D2, BB_E2, BB_F2, BB_G2, BB_H2,
      BB_A3, BB_B3, BB_C3, BB_D3, BB_E3, BB_F3, BB_G3, BB_H3,
      BB_A4, BB_B4, BB_C4, BB_D4, BB_E4, BB_F4, BB_G4, BB_H4,
      BB_A5, BB_B5, BB_C5, BB_D5, BB_E5, BB_F5, BB_G5, BB_H5,
      BB_A6, BB_B6, BB_C6, BB_D6, BB_E6, BB_F6, BB_G6, BB_H6,
      BB_A7, BB_B7, BB_C7, BB_D7, BB_E7, BB_F7, BB_G7, BB_H7,
      BB_A8, BB_B8, BB_C8, BB_D8, BB_E8, BB_F8, BB_G8, BB_H8
    ) = BB_SQUARES

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
