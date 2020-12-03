# frozen_string_literal: true

require 'test/unit'
require_relative 'caesar_cipher'

# Class for testing Caesar class
class TestCaeser < Test::Unit::TestCase
  def test_one_word_input_shift1
    shift = 1
    phrase = 'hello'
    caesar = Caesar.new(shift)

    assert_equal('ifmmp', caesar.encrypt(phrase))
  end

  def test_one_word_input_shift15
    shift = 15
    phrase = 'hello'
    caesar = Caesar.new(shift)

    assert_equal('wtaad', caesar.encrypt(phrase))
  end

  def test_one_word_input_shift30
    shift = 30
    phrase = 'hello'
    caesar = Caesar.new(shift)

    assert_equal('lipps', caesar.encrypt(phrase))
  end

  def test_multiple_word_input_shift1
    shift = 1
    phrase = 'take thy beak from out my heart'
    caesar = Caesar.new(shift)

    assert_equal('ublf uiz cfbl gspn pvu nz ifbsu', caesar.encrypt(phrase))
  end

  def test_multiple_word_input_shift10
    shift = 10
    phrase = 'take thy beak from out my heart'
    caesar = Caesar.new(shift)

    assert_equal('dkuo dri loku pbyw yed wi rokbd', caesar.encrypt(phrase))
  end

  def test_multiple_word_input_shift28
    shift = 28
    phrase = 'take thy beak from out my heart'
    caesar = Caesar.new(shift)

    assert_equal('vcmg vja dgcm htqo qwv oa jgctv', caesar.encrypt(phrase))
  end

  def test_input_with_capital_letters
    shift = 5
    phrase = 'Take Thy Beak From Out My Heart'
    caesar = Caesar.new(shift)

    assert_equal('Yfpj Ymd Gjfp Kwtr Tzy Rd Mjfwy', caesar.encrypt(phrase))
  end
end
