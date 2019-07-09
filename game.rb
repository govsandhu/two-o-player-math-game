# frozen_string_literal: true

require './question'
require './player'

class Game
  def initialize
    @current_player = 'Player 1'
    @player1 = Player.new
    @player2 = Player.new

    @game_over = false
  end

  def newTurn
    while @game_over == false
      puts ' ---- New Turn ---- '

      new_question = Question.new(@current_player)

      if !new_question.ask_question
        decreasePlayerLife
      else
        puts "Player 1: #{@player1.lives}/3   ||   Player 2: #{@player2.lives}/3"
      end
      changePlayer
      end
   end

  def decreasePlayerLife
    if @current_player == 'Player 1'
      @player1.lives -= 1
      puts "Player 1: #{@player1.lives}/3   ||   Player 2: #{@player2.lives}/3"

      if @player1.lives == 0
        @game_over = true
        puts ' ---- GAME OVER ---- '
      end

    else
      @player2.lives -= 1
      puts "Player 1: #{@player1.lives}/3   ||   Player 2: #{@player2.lives}/3"

      if @player2.lives == 0
        @game_over = true
        puts ' ---- GAME OVER ---- '
      end

    end
  end

  def changePlayer
    @current_player = if @current_player == 'Player 1'
                        'Player 2'
                      else
                        'Player 1'
                      end
  end
end

start = Game.new
start.newTurn
