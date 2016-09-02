require_relative "../common/game_constants.rb"
include GameConstants::Board
include GameConstants::Piece

module BoardUtils
  def file_index(square)
    square & 7
  end

  def rank_index(square)
    square >> 3
  end

  def shift_down(b)
    b >> 8
  end

  def shift_2_down(b)
    b >> 16
  end

  def shift_up(b)
    (b << 8) & BB_ALL
  end

  def shift_2_up(b)
    (b << 16) & BB_ALL
  end

  def shift_right(b)
    (b << 1) & ~bb_files[:file_a]
  end

  def shift_2_right(b)
    (b << 2) & ~bb_files[:file_a] & ~bb_files[:file_b]
  end

  def shift_left(b)
    (b >> 1) & ~bb_files[:file_h]
  end

  def shift_2_left(b)
    (b >> 2) & ~bb_files[:file_g] & ~bb_files[:file_h]
  end

  def shift_up_left(b)
    (b << 7) & ~bb_files[:file_h]
  end

  def shift_up_right(b)
    (b << 9) & ~bb_files[:file_a]
  end

  def shift_down_left(b)
    (b >> 9) & ~bb_files[:file_h]
  end

  def shift_down_right(b)
    (b >> 7) & ~bb_files[:file_a]
  end

  # def l90(b)
  #   mask = BB_VOID
  #
  #   while b
  #     square, b = next_bit(b)
  #     mask |= BB_SQUARES_L90[square]
  #   end
  #
  #   mask
  # end

private
  def next_bit(b)
    x = b & -b
    b ^= x

    r = 0

    if not x & 0xffffffff
      x >>= 32
      r |= 32
    end

    if not x & 0xffff
      x >>= 16
      r |= 16
    end

    if not x & 0xff
      x >>= 8
      r |= 8
    end

    if not x & 0xf
      x >>= 4
      r |= 4
    end

    if not x & 0x3
      x >>= 2
      r |= 2
    end

    if not x & 0x1
      r |= 1
    end

    return r, b
  end

  def bb_files
    {
      file_a: BB_A1 | BB_A2 | BB_A3 | BB_A4 | BB_A5 | BB_A6 | BB_A7 | BB_A8,
      file_b: BB_B1 | BB_B2 | BB_B3 | BB_B4 | BB_B5 | BB_B6 | BB_B7 | BB_B8,
      file_c: BB_C1 | BB_C2 | BB_C3 | BB_C4 | BB_C5 | BB_C6 | BB_C7 | BB_C8,
      file_d: BB_D1 | BB_D2 | BB_D3 | BB_D4 | BB_D5 | BB_D6 | BB_D7 | BB_D8,
      file_e: BB_E1 | BB_E2 | BB_E3 | BB_E4 | BB_E5 | BB_E6 | BB_E7 | BB_E8,
      file_f: BB_F1 | BB_F2 | BB_F3 | BB_F4 | BB_F5 | BB_F6 | BB_F7 | BB_F8,
      file_g: BB_G1 | BB_G2 | BB_G3 | BB_G4 | BB_G5 | BB_G6 | BB_G7 | BB_G8,
      file_h: BB_H1 | BB_H2 | BB_H3 | BB_H4 | BB_H5 | BB_H6 | BB_H7 | BB_H8
    }
  end

  def bb_ranks
    {
      rank_1: BB_A1 | BB_B1 | BB_C1 | BB_D1 | BB_E1 | BB_F1 | BB_G1 | BB_H1,
      rank_2: BB_A2 | BB_B2 | BB_C2 | BB_D2 | BB_E2 | BB_F2 | BB_G2 | BB_H2,
      rank_3: BB_A3 | BB_B3 | BB_C3 | BB_D3 | BB_E3 | BB_F3 | BB_G3 | BB_H3,
      rank_4: BB_A4 | BB_B4 | BB_C4 | BB_D4 | BB_E4 | BB_F4 | BB_G4 | BB_H4,
      rank_5: BB_A5 | BB_B5 | BB_C5 | BB_D5 | BB_E5 | BB_F5 | BB_G5 | BB_H5,
      rank_6: BB_A6 | BB_B6 | BB_C6 | BB_D6 | BB_E6 | BB_F6 | BB_G6 | BB_H6,
      rank_7: BB_A7 | BB_B7 | BB_C7 | BB_D7 | BB_E7 | BB_F7 | BB_G7 | BB_H7,
      rank_8: BB_A8 | BB_B8 | BB_C8 | BB_D8 | BB_E8 | BB_F8 | BB_G8 | BB_H8
    }
  end
end
