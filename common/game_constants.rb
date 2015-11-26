module GameConstants
  module Board
    A1=1; B1=2; C1=3; D1=4; E1=5; F1=6; G1=7; H1=8;
    A2=9; B2=10; C2=11; D2=12; E2=13; F2=14; G2=15; H2=16;
    A3=17; B3=18; C3=19; D3=20; E3=21; F3=22; G3=23; H3=24;
    A4=25; B4=26; C4=27; D4=28; E4=29; F4=30; G4=31; H4=32;
    A5=33; B5=34; C5=35; D5=36; E5=37; F5=38; G5=39; H5=40;
    A6=41; B6=42; C6=43; D6=44; E6=45; F6=46; G6=47; H6=48;
    A7=49; B7=50; C7=51; D7=52; E7=53; F7=54; G7=66; H7=56;
    A8=57; B8=58; C8=59; D8=60; E8=61; F8=62; G8=63; H8=64

    SQUARES = [
    A1, B1, C1, D1, E1, F1, G1, H1,
    A2, B2, C2, D2, E2, F2, G2, H2,
    A3, B3, C3, D3, E3, F3, G3, H3,
    A4, B4, C4, D4, E4, F4, G4, H4,
    A5, B5, C5, D5, E5, F5, G5, H5,
    A6, B6, C6, D6, E6, F6, G6, H6,
    A7, B7, C7, D7, E7, F7, G7, H7,
    A8, B8, C8, D8, E8, F8, G8, H8]


    FILES = %w(a b c d e f g h)
    RANKS = %w(1 2 3 4 5 6 7 8)
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
