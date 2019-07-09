# frozen_string_literal: true

class Question
  attr_accessor :correct_answer, :num1, :num2, :answer

  def initialize(current_player)
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = @num1 + @num2

    puts "#{current_player}, what is #{@num1} plus #{@num2}?"
  end

  def ask_question
    @player_input = gets.chomp.to_i

    if @player_input == @answer
      puts 'Correct!'
      return true
    else
      puts 'This answer is incorrect'
      return false
    end
  end
end
