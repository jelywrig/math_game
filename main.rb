load './Player.rb'
load './Question.rb'
load './Turn.rb'

player1 = Player.new("Jessie")

turn1 = Turn.new(player1.name)

result = turn1.play_turn

puts result