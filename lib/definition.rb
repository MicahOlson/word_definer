class Definition
  attr_reader :meaning

  def initialize(attrs)
    @meaning = attrs[:meaning]
  end

  def self.all
  end
end
