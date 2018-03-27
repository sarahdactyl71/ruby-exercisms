# Examples
# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT
# ^ ^ ^  ^ ^    ^^
#The hamming distance here is 7 because there are 7 places where there is a
#difference between the first strand of DNA and the second

#Hamming can only happen with DNA strands of equal length
class Hamming

  def equal_length(strand_one, strand_two)
    if strand_one.length == strand_two.length
      true
    else
      false
    end
  end

  def hamming_distance(strand_one, strand_two)
    if equal_length(strand_one, strand_two) == false
      return "These strands aren't the same length."
    else
      determine_distance(strand_one, strand_two)
    end
  end

  def determine_distance(strand_one, strand_two)
    strand_one = strand_one.chars
    strand_two = strand_two.chars
    distance = 0
    strand_one.zip(strand_two).each do |set|
      if set.first != set.last
        distance += 1
      end
    end
    distance
  end

end
