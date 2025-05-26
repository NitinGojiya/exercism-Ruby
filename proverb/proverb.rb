class Proverb
  def initialize(*list)
     if list.last.is_a?(Hash)
      @a_hash = list.pop[:qualifier]
    end
    @list = list
  end
  def to_s
    str_line = []
    @list.each_with_index do |value, index|
      unless  @list[index+1].class == Hash
        str_line << "For want of a #{@list[index]} the #{@list[index + 1]} was lost.\n" unless  @list.length - 1 == index

      end
    end
    last_line = "And all for the want of a #{@list.first}." unless @a_hash
    last_line = "And all for the want of a #{@a_hash} #{@list.first}." if @a_hash
     str_line << last_line
     str_line.join()
  end
end
chain = %w[nail shoe horse rider message battle kingdom]
proverb = Proverb.new(*chain,qualifier: 'horseshoe')
proverb.to_s

