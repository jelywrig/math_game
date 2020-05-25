load './Player.rb'
load './Question.rb'

player1 = Player.new("Jessie")

puts player1.name, player1.lives

player1.lose_life

puts player1.lives

q1 = Question.new

puts q1
answer = gets.chomp.to_i

puts q1.check_answer(answer)