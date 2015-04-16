require 'minitest/autorun'
require 'pescobells'

class TestPescobells < Minitest::Test

  include Pescobells

  def test_that_it_has_a_version_number
    refute_nil ::Pescobells::VERSION
  end

  def test_calculate_bells
    time = Time.now
    bells = time_to_bells time 
    assert_equal bells[0].size, time.hour % 12
    assert_equal bells[1].size, time.min / 15  
  end

  def test_playing_bells
    time = Time.now
    bells = time_to_bells time
    assert_equal [ true ],  play_bells(bells).uniq
  end

end
