require 'minitest/autorun'
require_relative 'diamond'

class DiamondTest < Minitest::Test
  def test_letter_a
    answer = Diamond.make_diamond('A')
    assert_equal "A\n", answer
  end

  def test_letter_b
    # skip
    answer = Diamond.make_diamond('B') # @position = 2 length = 3 spacing = 1
    string = " A \n"\
             "B B\n"\
             " A \n"
    assert_equal string, answer
  end

  def test_letter_c
    # skip
    answer = Diamond.make_diamond('C') # @position = 3 length = 5 spacing = 3
    string = "  A  \n"\
             " B B \n"\
             "C   C\n"\
             " B B \n"\
             "  A  \n"
    assert_equal string, answer
  end

  def test_letter_d
    # skip
    answer = Diamond.make_diamond('D') # @position = 4 length = 7 spacing = 5
    string = "   A   \n"\
             "  B B  \n"\
             " C   C \n"\
             "D     D\n"\
             " C   C \n"\
             "  B B  \n"\
             "   A   \n"
    assert_equal string, answer
  end

  def test_letter_e
    # skip
    answer = Diamond.make_diamond('E') # @position = 5 length = 9 spacing = 7
    string = "    A    \n"\
             "   B B   \n"\
             "  C   C  \n"\
             " D     D \n"\
             "E       E\n"\
             " D     D \n"\
             "  C   C  \n"\
             "   B B   \n"\
             "    A    \n"
    assert_equal string, answer
  end

  def test_letter_f
    # skip
    answer = Diamond.make_diamond('F') # @position = 6 length = 11 spacing = 9
    string = "     A     \n"\
             "    B B    \n"\
             "   C   C   \n"\
             "  D     D  \n"\
             " E       E \n"\
             "F         F\n"\
             " E       E \n"\
             "  D     D  \n"\
             "   C   C   \n"\
             "    B B    \n"\
             "     A     \n"
    assert_equal string, answer
  end
end
