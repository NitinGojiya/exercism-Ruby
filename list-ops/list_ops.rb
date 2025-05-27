class ListOps
  def self.arrays(list)
    @list = list
    @list.length
  end

  def self.reverser(list)
    list.reverse
  end

  def self.concatter(list1, list2)
    list1 + list2
  end

  def self.mapper(list)
    list.map { |n| n + 1 }
  end

  def self.filterer(list, &block)
    return e_list = [] if list.empty?
    list.select(&block)
  end

  def self.sum_reducer(list)
    list.sum
  end

  def self.factorial_reducer(list)
    fact = 1
    list.each do |x|
      fact *= x
    end
    fact
  end

end