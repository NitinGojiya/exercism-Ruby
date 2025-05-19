class Hamming
  def self.compute(haming1, haming2)
    raise ArgumentError, 'haming must be of equal length' unless haming1.length == haming2.length

    haming1.chars.zip(haming2.chars).count { |a, b| a != b }
  end
end