require 'rspec'
require 'definition'
require 'word'
require 'pry'

describe '#Definition' do
  before(:each) do
    Word.clear
    Definition.clear
    @word = Word.new({name: "Apple"})
    @word.save
  end

  describe('#initialize') do
    it("initializes a Definition object with a hash of attributes") do
      apple = Definition.new({meaning: "a round fruit often red in color", word_id: @word.id})
      expect(apple.meaning).to(eq("a round fruit often red in color"))
    end
  end

  describe('.all') do
    it("returns an array of all saved definition objects (empty at first)") do
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same definition if it has the same attributes as another") do
      apple = Definition.new({meaning: "a round fruit often red in color", word_id: @word.id})
      apple2 = Definition.new({meaning: "a round fruit often red in color", word_id: @word.id})
      expect(apple).to(eq(apple2))
    end
  end

  describe('#save') do
    it("saves a definition into definitions 'database'") do
      apple = Definition.new({meaning: "a round fruit often red in color", word_id: @word.id})
      apple.save
      baby = Definition.new({meaning: "a very young or newly born child", word_id: @word.id})
      baby.save
      expect(Definition.all).to(eq([apple, baby]))
    end
  end

  describe('.clear') do
    it("clears all definitions from 'database'") do
      apple = Definition.new({meaning: "a round fruit often red in color", word_id: @word.id})
      apple.save
      baby = Definition.new({meaning: "a very young or newly born child", word_id: @word.id})
      baby.save
      Definition.clear
      expect(Definition.all).to(eq([]))
    end
  end

  describe('.find') do
    it("finds a definition by id") do
      apple = Definition.new({meaning: "a round fruit often red in color", word_id: @word.id})
      apple.save
      baby = Definition.new({meaning: "a very young or newly born child", word_id: @word.id})
      baby.save
      expect(Definition.find(apple.id)).to(eq(apple))
    end
  end

  describe('#update') do
    it("updates a definition by id") do
      apple = Definition.new({meaning: "a round fruit often red in color", word_id: @word.id})
      apple.save
      apple.update("a very young or newly born child", @word.id)
      expect(apple.meaning).to(eq("a very young or newly born child"))
    end
  end

  describe('#delete') do
    it("deletes a definition by id") do
      apple = Definition.new({meaning: "a round fruit often red in color", word_id: @word.id})
      apple.save
      baby = Definition.new({meaning: "a very young or newly born child", word_id: @word.id})
      baby.save
      apple.delete
      expect(Definition.all).to(eq([baby]))
    end
  end

  describe('.find_by_word') do
    it("finds definitions for a word") do
      word2 = Word.new({name: "Baby"})
      word2.save
      meaning = Definition.new({meaning: "a round fruit often red in color", word_id: @word.id})
      meaning.save
      meaning2 = Definition.new({meaning: "a very young or newly born child", word_id: word2.id})
      meaning2.save
      expect(Definition.find_by_word(word2.id)).to(eq([meaning2]))
    end
  end

  describe('#word') do
    it("finds the word a definition belongs to") do
      meaning = Definition.new({meaning: "a round fruit often red in color", word_id: @word.id})
      meaning.save
      expect(meaning.word).to(eq(@word))
    end
  end
end
