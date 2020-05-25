

class Turn 
  def initialize(player_name)
    @player_name = player_name
    @question = Question.new
  end
  
  def play_turn
    puts "#{@player_name}'s turn"
    puts @question
    answer = gets.chomp
    correct = @question.check_answer(answer)
    if(correct)
      puts 'YES! You are correct.'
    else
      puts 'Seriously? No!'
    end
    correct
  end

end