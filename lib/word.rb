class Word
  attr_reader :word

  @@words = {}

  def initialize(attrs)
    @word = attrs[:word]
  end

  def self.all
    @@words.values
  end

  def ==(word_to_compare)
    self.word == word_to_compare.word
  end
end
