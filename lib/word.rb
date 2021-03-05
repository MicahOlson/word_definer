class Word
  attr_reader :name, :id

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
  end
end
