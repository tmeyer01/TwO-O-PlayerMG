require './player'
require './question'

class Game 
 
  def initialize 
   @current_player = 0
  end

  def start(players)
   
    while players[0].lives > 0 && players[1].lives > 0 do 

      puts "---*****NEW TURN*****---"
      question = Question.new
      puts "#{players[@current_player].long_name}: #{question.question_for_user}" 
      puts ">"
      user_answer = $stdin.gets.chomp
      
      if user_answer.to_i == question.realanswer
        puts "#{players[@current_player].long_name}: YES! You are correct."
        @current_player === 0 ? @current_player = 1 : @current_player = 0
      else
        players[@current_player].reduce_lives
        puts "#{players[@current_player].long_name}: Seriously? No!"
        @current_player === 0 ? @current_player = 1 : @current_player = 0
      end

      puts "#{players[0].short_name}: #{players[0].end_lives} vs #{players[1].short_name}:#{players[1].end_lives}"
    
    end
  
    if players[0].lives == 0
      puts "#{players[1].long_name} wins with a score of #{players[1].end_lives}"
      puts "---*****GAME OVER*****---"
      puts "Good bye!"

    else  players[1].lives == 0 
      puts "#{players[0].long_name} wins with a score of #{players[0].end_lives}"
      puts "---*****GAME OVER*****---"
      puts "Good bye!"
    end
  end
end