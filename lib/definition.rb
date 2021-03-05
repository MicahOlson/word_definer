class Definition
  attr_reader :meaning

  @@definitions = {}

  def initialize(attrs)
    @meaning = attrs[:meaning]
  end

  def self.all
    @@definitions.values
  end
end
