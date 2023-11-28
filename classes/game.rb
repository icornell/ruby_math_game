require_relative 'player' 
require_relative 'question' 

class Game

  attr_reader :player1, :player2, :current_player, :game_over

  def initialize 
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
    @game_over = false
  end

  def start_game
    loop do
      turn(@current_player)
      break if game_over?
  
      switch_player
    end
    display_game_over
  end
  

  def turn(player)
    question = Question.new
    puts "#{player.name}: #{question.ask_question}"
    answer = gets.chomp.to_i
    
    correct = question.check_answer(answer)
    player.answer_question(correct)
    display_score
  end
  

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def game_over?
    !player1.alive? || !player2.alive?
  end


  def display_score 
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

  def display_winner
    winner = player1.alive? ? player1 : player2
    puts "#{winner.name} wins with a score of #{winner.score}/3"
  end

  def display_game_over
    puts "----- GAME OVER -----"
    display_winner
    puts "Good bye!"
  end
end
