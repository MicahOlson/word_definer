class Word
  attr_reader :id
  attr_accessor :name

  @@words = {}
  @@total_rows = 0

  def initialize(attrs)
    @name = attrs[:name]
    @id = attrs[:id] || @@total_rows += 1
  end

  def self.all
    @@words.values
  end

  def ==(compare_word)
    self.name == compare_word.name
  end

  def save
    @@words[self.id] = Word.new({name: self.name, id: self.id})
  end

  def self.clear
    @@words = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@words[id]
  end

  def update(name)
    @name = name
  end

  def delete
    @@words.delete(self.id)
  end

  def definitions
    Definition.find_by_word(self.id)
  end
end
