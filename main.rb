load './Player.rb'
load './Question.rb'
load './Turn.rb'
load './Game.rb'

player1 = Player.new("Jessie")
player2= Player.new("Bob")
player3= Player.new("Three")

game = Game.new([player1, player2, player3])
game.play