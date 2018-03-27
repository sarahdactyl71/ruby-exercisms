gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/hamming'

class HammingTest < Minitest::Test

  def test_object_is_an_instance_of_hamming
    hamming = Hamming.new

    assert_instance_of Hamming, hamming
  end

  # def test_character_map_is_complete
  #   e = Charactermap.new
  #
  #   assert_instance_of Array, e.character_map
  #
  #   assert_equal 40, e.character_map.length
  #
  #   assert_equal "h", e.character_map[7]
  # end

end
