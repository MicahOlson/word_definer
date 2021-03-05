require 'rspec'
require 'definition'
require 'word'
require 'pry'

describe '#Definition' do
  describe('#initialize') do
    it("initializes a Definition object with a hash of attributes") do
      apple = Definition.new({meaning: "a round fruit often red in color"})
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
      apple = Definition.new({meaning: "a round fruit often red in color"})
      apple2 = Definition.new({meaning: "a round fruit often red in color"})
      expect(apple).to(eq(apple2))
    end
  end
end
