module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant
  RANKS = 1..8
  FILES = 'A'..'H'
  def self.valid_square?(rank, file)
     RANKS.include?(rank) && FILES.include?(file)
  end

  def self.nick_name(first_name, last_name)
    first_name[0..1].upcase + last_name[-2..-1].upcase
  end

  def self.move_message(first_name, last_name, square)
  file = square[0]
  rank = square[1].to_i

  short_name = "#{first_name[0..1].upcase}#{last_name[-2..-1].upcase}"

    if RANKS.include?(rank) && FILES.include?(file)
      "#{short_name} moved to #{square}"
    else
      "#{short_name} attempted to move to #{square}, but that is not a valid square"
    end
  end
end
# Chess.valid_square?(1, 'A')
# Chess.move_message("Lisa", "Li", "H8")
 Chess.move_message("John", "Doe", "A2")
