class Player 
  
  @@player_count = 0

  attr_reader :short_name, :long_name, :lives, :reduce_lives
  
  attr_writer :lives, :reduce_lives, :short_name, :long_name

  def initialize
    @@player_count += 1 
    self.short_name = "P#{@@player_count}"
    self.long_name ="Player#{@@player_count}"
    self.lives = 3
  end
  
  def reduce_lives
    self.lives -= 1
  end

  def end_lives 
   "#{lives}/3"
  end 

end