require_relative 'water'

class Cell

  attr_accessor :content

  def initialize content
    @shot = false
    @content = content.new
  end

  def shot?
    @shot
  end

  def receive_shot
    raise "Already been shot" if shot?
    @shot = true
    content.hit!
  end
end