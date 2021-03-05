class Definition
  attr_reader :meaning

  @@definitions = {}

  def initialize(attrs)
    @meaning = attrs[:meaning]
  end

  def self.all
    @@definitions.values
  end

  def ==(compare_meaning)
    self.meaning == compare_meaning.meaning
  end

  def save
  end
end
