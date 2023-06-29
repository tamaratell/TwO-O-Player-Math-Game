class Game
  attr_accessor :id, :wins, :score

  def initialize(player_id, player_wins, player_lives)
    @id = player_id
    @wins = player_wins
    @lives = player_lives
  end

  def playerWin(id)
    @wins += 1
  end

  def respondWin(id)
    puts "Player #{id}: YES! You are correct."
  end

  def playerLose(id)
    @score << 0
    @lives -= 1
  end 

  def respondLose(id)
    puts "Player #{id}: Sorry, you lost this one."
  end

  def playerWon?
    @wins < 3  
  end

  def playerLost?
    @lives > 0
  end

  def calculateScore
    puts "P#{@id}: #{@wins}/3"
  end

end


def nextRound(player1, player2)
  if player1.newRound? && player2.newRound?
    puts "#{player1.calculateScore} v #{player2.calculateScore}"
    puts "----NEXT ROUND----"
  elsif player1.playerWon? || player2.playerLost?
    puts "Game over. Player 1 wins with a score of #{player1.wins}/3"
  elsif player2.playerWon? || player2.playerLost?
    puts "Game over. Player 2 wins with a score of #{player2.wins}/3"
  end
end 

