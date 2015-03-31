class Water
  attr_reader :has_been_hit
  def initialize
    @has_been_hit = false
  end

  def hit!
    @has_been_hit = true
  end
end