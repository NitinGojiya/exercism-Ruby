class Scrabble
  LETTER_VALUES = {
    1 => %w[A E I O U L N R S T],
    2 => %w[D G],
    3 => %w[B C M P],
    4 => %w[F H V W Y],
    5 => ['K'],
    8 => %w[J X],
    10 => %w[Q Z]
  }

  LETTER_SCORE = LETTER_VALUES.flat_map { |score, letters| letters.map { |letter| [letter, score] } }.to_h

  def initialize(word)
    @word = word.to_s.upcase
  end

  def score
    @word.chars.sum { |char| LETTER_SCORE[char] || 0 }
  end
end
