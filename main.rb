require_relative 'player'
require_relative 'game'

player1 = Player.new(1, 0, 3)
player2 = Player.new(2, 0, 3)

playGame(player1, player2, method(:mathQuestion))