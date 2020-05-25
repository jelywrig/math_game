load './Player.rb'

player1 = Player.new("Jessie")

puts player1.name, player1.lives

player1.lose_life

puts player1.lives
