class Game
  def initialize(players)
    @players = players
    @curr_player = @players[0]
    @num_players = @players.length
    @turn_num = 0
    @winners = nil
  end

  def play
    while !@winner
      turn = Turn.new(@curr_player.name)
      correct = turn.play_turn
      unless correct
        @curr_player.lose_life
      end
      check_scores
      #setup for next turn
      @turn_num +=1
      @curr_player = @players[@turn_num % @num_players]
    end

    puts "Good-bye!"
  end
  
  private
  
  def check_scores
    unless @curr_player.lives == 0
      output = ''
      @players.each_with_index do |player, index|
        output += "#{player.name}: #{player.lives.to_s}/3"
        if index < @num_players - 1
          output += ' vs '
        end
      end
      puts output
      puts "---- New Turn ----"
    else 
      #need to update this logic for possible ties
      @winner = @players[0]
      @players.each do |player|
        if player.lives > @winner.lives
          @winner = player
        end
      end
      puts "#{@winner.name} won with #{@winner.lives.to_s}/3"
      puts "---- Game Over ----"
    end
  end
end
