class Word
  attr_reader :name

  @@words = {}

  def initialize(attrs)
    @name = attrs[:name]
  end

  def self.all
    @@words.values
  end

  def ==(compare_word)
    self.name == compare_word.name
  end
end
