class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(': ')[1].strip
  end

  def log_level
    m = @line.split(':')[0].strip
    m.gsub!('[', '')
    m.gsub!(']', '')
    m.downcase!
    return m
  end

  def reformat
    m = @line.split(':')[0].strip
    m.gsub!('[', '(')
    m.gsub!(']', ')')
    m.downcase!
    return "#{@line.split(': ')[1].strip} #{m}"
  end
end
