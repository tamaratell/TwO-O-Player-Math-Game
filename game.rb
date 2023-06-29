def mathQuestion
  number1 = rand(1..20).round
  number2 = rand(1..20).round

  correct_answer = number1 + number2
  
  [number1, number2, correct_answer] 
end

def playGame(player1, player2, mathQuestion)
  round = 0

  puts "---- NEW GAME STARTING NOW ----"

  while player1.newRound? && player2.newRound?
    round += 1

    question_details = mathQuestion

    if round % 2 != 0
      ask_id = player1.id
      response = player2
    else
      ask_id = player2.id
      response = player1
    end

    puts "---- NEW ROUND ----"

    puts "Player #{ask_id}: What's #{question_details[0]} plus #{question_details[1]}?"
    answer = gets.chomp.to_i

    puts response.questionCorrect?(answer, question_details[2])

    puts "#{player1.calculateScore} v #{player2.calculateScore}"
  end

  if player1.playerWon?
    puts "Game over. Player 1 wins with a score of #{player1.wins}/3"
  elsif player2.playerWon?
    puts "Game over. Player 2 wins with a score of #{player2.wins}/3"
  else
    puts "Game over. It's a tie!"
  end
end

playGame(player1, player2, method(:mathQuestion))
