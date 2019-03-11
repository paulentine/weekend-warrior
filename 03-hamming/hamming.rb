class Hamming
  def self.compute(strand_one, strand_two)
    distance, i = 0, 0
    raise ArgumentError if strand_one.length != strand_two.length
    strand_one.length.times do |i|
      distance += 1 if strand_one[i] != strand_two[i]
    end
    return distance
  end
end