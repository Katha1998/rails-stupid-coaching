class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:answer]
    if @user_input.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @user_input == "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
