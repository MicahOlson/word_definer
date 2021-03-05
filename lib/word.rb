class Word
  attr_reader :word

  @@words = {}

  def initialize(attrs)
    @word = attrs[:word]
  end

  def self.all
    @@words.values
  end
end
