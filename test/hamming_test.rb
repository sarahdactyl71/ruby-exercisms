gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/hamming'

class HammingTest < Minitest::Test

  def test_object_is_an_instance_of_hamming
    hamming = Hamming.new

    assert_instance_of Hamming, hamming
  end

  def test_strands_are_the_same_length
    hamming = Hamming.new
    first_strand = "fish"
    second_strand = "boat"
    third_strand = "submarine"

    assert_equal true, hamming.equal_length(first_strand, second_strand)
    assert_equal false, hamming.equal_length(first_strand, third_strand)
  end

  def test_hamming_distance
    hamming = Hamming.new
    first_strand = "GAGCCTACTAACGGGAT"
    second_strand = "GAGCCTACTAACGGGAT"
    third_strand = "CATCGTAATGACGGCCT"
    fourth_strand = "EckyEckyEckyKapangZoomPingAh"

    assert_equal "These strands aren't the same length.", hamming.hamming_distance(first_strand, fourth_strand)
    assert_equal 0, hamming.hamming_distance(first_strand, second_strand)
    assert_equal 7, hamming.hamming_distance(first_strand, third_strand)
  end

end

# TO run the test navigate to test directory and run
# ruby -r minitest/pride hamming_test.rb
