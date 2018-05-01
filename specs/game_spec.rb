require('minitest/autorun')
require('minitest/rg')

require_relative('../models/game')

class GameTest < Minitest::Test

  def setup
    @game1 = Game.new("scissors")
    @game2 = Game.new("rock")
    @game3 = Game.new("paper")
    @game4 = Game.new("Invalid Entry")
  end

  def test_rock__loses
    assert_equal("You lose", @game1.rock())
  end

  def test_rock__wins
    assert_equal("You win", @game3.rock())
  end

  def test_rock__draw
    assert_equal("Draw", @game2.rock())
  end

  def test_rock__invalid
    assert_equal("Not valid", @game4.rock())
  end

  def test_paper__loses
    assert_equal("You lose", @game2.paper())
  end

  def test_paper__wins
    assert_equal("You win", @game1.paper())
  end

  def test_paper__draw
    assert_equal("Draw", @game3.paper())
  end

  def test_paper__invalid
    assert_equal("Not valid", @game4.paper())
  end

  def test_scissors__loses
    assert_equal("You lose", @game3.scissors())
  end

  def test_scissors__wins
    assert_equal("You win", @game2.scissors())
  end

  def test_scissors__draw
    assert_equal("Draw", @game1.scissors())
  end

  def test_scissors__invalid
    assert_equal("Not valid", @game4.scissors())
  end

end
