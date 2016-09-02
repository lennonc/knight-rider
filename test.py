SQUARES = [
    A1, B1, C1, D1, E1, F1, G1, H1,
    A2, B2, C2, D2, E2, F2, G2, H2,
    A3, B3, C3, D3, E3, F3, G3, H3,
    A4, B4, C4, D4, E4, F4, G4, H4,
    A5, B5, C5, D5, E5, F5, G5, H5,
    A6, B6, C6, D6, E6, F6, G6, H6,
    A7, B7, C7, D7, E7, F7, G7, H7,
    A8, B8, C8, D8, E8, F8, G8, H8 ] = range(64)

# print(SQUARES)

BB_SQUARES = [
      BB_A1, BB_B1, BB_C1, BB_D1, BB_E1, BB_F1, BB_G1, BB_H1,
      BB_A2, BB_B2, BB_C2, BB_D2, BB_E2, BB_F2, BB_G2, BB_H2,
      BB_A3, BB_B3, BB_C3, BB_D3, BB_E3, BB_F3, BB_G3, BB_H3,
      BB_A4, BB_B4, BB_C4, BB_D4, BB_E4, BB_F4, BB_G4, BB_H4,
      BB_A5, BB_B5, BB_C5, BB_D5, BB_E5, BB_F5, BB_G5, BB_H5,
      BB_A6, BB_B6, BB_C6, BB_D6, BB_E6, BB_F6, BB_G6, BB_H6,
      BB_A7, BB_B7, BB_C7, BB_D7, BB_E7, BB_F7, BB_G7, BB_H7,
      BB_A8, BB_B8, BB_C8, BB_D8, BB_E8, BB_F8, BB_G8, BB_H8
      ] = [ 1 << i for i in SQUARES ]

# print(BB_SQUARES)
# print(BB_A1)
# print(enumerate(BB_SQUARES))
def file_index(square):
    """Gets the file index of square where `0` is the a file."""
    return square & 7

def rank_index(square):
    """Gets the rank index of the square where `0` is the first rank."""
    return square >> 3

BB_VOID = 0b0000000000000000000000000000000000000000000000000000000000000000
BB_LIGHT_SQUARES = BB_DARK_SQUARES = BB_VOID


for square, mask in enumerate(BB_SQUARES):
    print(square)
    if (file_index(square) + rank_index(square)) % 2:
        BB_LIGHT_SQUARES |= mask
    else:
        BB_DARK_SQUARES |= mask
