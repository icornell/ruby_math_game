class Player

  attr_accessor :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def answer_question(correct)
    if correct
      @score += 1
      puts "Correct!"
    else
      @lives -= 1
      puts "Wrong Answer! You lose a life and have #{@lives} lives left."
    end
  end

  def alive?
    @lives > 0
  end
  
end
