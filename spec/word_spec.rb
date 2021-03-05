require('rspec')
require('pry')
require('word')

describe '#Word' do  
  before(:each) do
    Word.clear
  end

  describe('#initialize') do
    it("initializes a Word object with a hash of attributes") do
      word = Word.new({name: "Apple"})
      expect(word.name).to(eq("Apple"))
    end
  end

  describe('.all') do
    it("returns an array of all saved word objects (empty at first)") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same word if it has the same attributes as another word") do
      word = Word.new({name: "Apple"})
      word2 = Word.new({name: "Apple"})
      expect(word).to(eq(word2))
    end
  end

  describe('#save') do
    it("saves a word into words 'database'") do
      word = Word.new({name: "Apple"})
      word.save
      word2 = Word.new({name: "Baby"})
      word2.save
      expect(Word.all).to(eq([word, word2]))
    end
  end

  describe('.clear') do
    it("clears all words from 'database'") do
      word = Word.new({name: "Apple"})
      word.save
      word2 = Word.new({name: "Baby"})
      word2.save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end

  describe('.find') do
    it("finds a word by id") do
      word = Word.new({name: "Apple"})
      word.save
      word2 = Word.new({name: "Baby"})
      word2.save
      expect(Word.find(word.id)).to(eq(word))
    end
  end

  describe('#update') do
    it("updates a word by id") do
      word = Word.new({name: "Apple"})
      word.save
      word.update("Baby")
      expect(word.name).to(eq("Baby"))
    end
  end

  describe('#delete') do
    it("deletes a word by id") do
      word = Word.new({name: "Apple"})
      word.save
      word2 = Word.new({name: "Baby"})
      word2.save
      word.delete
      expect(Word.all).to(eq([word2]))
    end
  end
end
