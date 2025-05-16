=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  def initialize(str)
    @str = str
  end

  def word_count
    filter = @str.gsub(/[,\n!!:&@$%^&]/, " ")
    filter.downcase!
    filter.tr!('.', '')
    cleaned_str = filter.gsub(/\A'(.*)'\z/, '\1')
    split_string = cleaned_str.split
    count = {}

    split_string.each do |word|
      word = word.gsub(/\A'(.*)'\z/, '\1') if word.start_with?("'") && word.end_with?("'")
      count.keys.include?(word) ? count[word] += 1 : count[word] = 1
    end
    count
  end
end
