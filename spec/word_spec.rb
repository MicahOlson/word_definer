require('rspec')
require('pry')
require('word')

describe '#Word' do
  describe('#initialize') do
    it("initializes a Word object with a hash of attributes") do
      word = Word.new({word: "Apple"})
      expect(word.word).to(eq("Apple"))
    end
  end

  describe('.all') do
    it("returns an array of all saved word objects (empty at first)") do
      expect(Word.all).to(eq([]))
    end
  end
end
