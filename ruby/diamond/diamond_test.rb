require 'minitest/autorun'
require_relative 'diamond'

class DiamondTest < Minitest::Test
  def test_letter_a
    answer = Diamond.make_diamond('A')
    assert_equal "A\n", answer
  end

  def test_letter_b
    # skip
    answer = Diamond.make_diamond('B')
    string = " A \n"\
             "B B\n"\
             " A \n"
    assert_equal string, answer
  end

  def test_letter_c
    skip
    answer = Diamond.make_diamond('C')
    string = "  A  \n"\
             " B B \n"\
             "C   C\n"\
             " B B \n"\
             "  A  \n"
    assert_equal string, answer
  end

  def test_letter_d
    skip
    answer = Diamond.make_diamond('D')
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
    skip
    answer = Diamond.make_diamond('E')
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
end
