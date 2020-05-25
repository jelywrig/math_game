class Question

  Operators = ['plus', 'minus', 'divided by (int math)', 'times']
  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    operator_selector = rand(0..3)
    @operator_text = Operators[operator_selector]
    case operator_selector
      when 0
        @answer = @num1 + @num2
      when 1
        @answer = @num1 - @num2
      when 2
        @answer = @num1 / @num2
      when 3
        @answer = @num1 * @num2
    end
  end
  def to_s
    "What does #{@num1} #{@operator_text} #{@num2} equal?"
  end

  def check_answer(answer)
    answer.to_i == @answer
  end
  
end