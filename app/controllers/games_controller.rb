class GamesController < ApplicationController

  def param_games
    @name = params[:name]
    @first_letter = @name[0]

    if @first_letter=="A"
      @your_name = "Hey, your name starts with the first letter of the alphabet!"
    end 
    render "param_games.html.erb"
  end 

  def guess_a_number
    @number = params[:number]

    @guess = @number.to_i

    if @guess > 36
      @guess_D = "Guess Lower"
    end 

    if @guess < 36
      @guess_D = "Guess Higher"

    end 

    if @guess ==36
      @guess_D = "Hey, You got the right answer"
    end 

    render "guess_a_number.html.erb"
  end 

end
