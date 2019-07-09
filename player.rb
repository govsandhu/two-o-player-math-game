class Player 
  attr_accessor :name

  def initialize (name) 
    @name = name
    @lives = 3
  end

  def alive?
    live > 0
  end
end