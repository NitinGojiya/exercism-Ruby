class HighScores
  def initialize(list)
    @list = list
  end
  def scores
    @list
  end
  def latest
    @list.last
  end
  def personal_best
    @list.max
  end
  def personal_top_three
    sorted_list = @list.sort
    list_size = @list.size
    # for desending sorting using <=> operator
    list_size >= 3 ? sorted_list[-3..-1].sort { |fist, second| second <=> fist } : sorted_list[-list_size..-1].sort { |fist, second| second <=> fist }
  end
  def latest_is_personal_best?
    @list.last == @list.max
  end
end
