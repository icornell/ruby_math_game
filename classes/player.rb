class Player
  # - Player
  # - Instance variables:
  #   - name
  #   - lives
  #   - score
  # - Methods:
  #   - answer_question
  #   - alive?

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
    if @lives > 0
      puts "You have #{@lives} lives left."
      true
    else
      puts "You have no lives left."
      false
    end
  end
end
