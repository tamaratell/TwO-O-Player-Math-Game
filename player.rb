class Player
  attr_accessor :id, :wins, :lives

  def initialize(player_id, player_wins, player_lives)
    @id = player_id
    @wins = player_wins
    @lives = player_lives
  end

  def win
    @wins += 1
  end

  def lose
    @lives -= 1
  end 

  def playerWon?
    @wins == 3
  end

  def playerLost?
    @lives == 0
  end

  def newRound?
    @wins < 3 && @lives > 0
  end

  def calculateScore
    "P#{@id}: #{@wins}/3"
  end

  def questionCorrect?(answer, correct_answer, id)
    if answer == correct_answer
      @wins += 1
      "Player #{id}: YES! That's correct"
    else
      @lives -= 1
      "Player #{id}: Seriously? No!"
    end
  end
end

