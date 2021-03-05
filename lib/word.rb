class Word
  attr_reader :word

  def initialize(attrs)
    @word = attrs[:word]
  end

  def self.all
  end
end
