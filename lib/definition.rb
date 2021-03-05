class Definition
  attr_reader :meaning, :id

  @@definitions = {}
  @@total_rows = 0

  def initialize(attrs)
    @meaning = attrs[:meaning]
    @id = attrs[:id] || @@total_rows += 1
  end

  def self.all
    @@definitions.values
  end

  def ==(compare_meaning)
    self.meaning == compare_meaning.meaning
  end

  def save
    @@definitions[self.id] = Definition.new({meaning: self.meaning, id: self.id})
  end

  def self.clear
  end
end
