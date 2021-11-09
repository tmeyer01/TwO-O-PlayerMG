##This is where to start game, required all files need 

require './game'
require './question'
require './player'

player1 = Player.new
player2 = Player.new
players = [player1, player2]

game = Game.new 
game.start(players)