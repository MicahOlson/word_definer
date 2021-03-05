class Definition
  attr_reader :id
  attr_accessor :meaning, :word_id

  @@definitions = {}
  @@total_rows = 0

  def initialize(attrs)
    @meaning = attrs[:meaning]
    @word_id = attrs[:word_id]
    @id = attrs[:id] || @@total_rows += 1
  end

  def self.all
    @@definitions.values
  end

  def ==(compare_meaning)
    (self.meaning == compare_meaning.meaning) && (self.word_id == compare_meaning.word_id)
  end

  def save
    @@definitions[self.id] = Definition.new({meaning: self.meaning, word_id: self.word_id, id: self.id})
  end

  def self.clear
    @@definitions = {}
  end

  def self.find(id)
    @@definitions[id]
  end

  def update(meaning, word_id)
    self.meaning = meaning
    self.word_id = word_id
    @@definitions = Definition.new({meaning: self.meaning, word_id: self.word_id, id: self.id})
  end

  def delete
    @@definitions.delete(self.id)
  end

  def self.find_by_word(wrd_id)
    @@definitions.values.select { |definition| definition.word_id == wrd_id }
  end

  def word
    Word.find(self.word_id)
  end
end
