class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @your_message = params[:your_message]
    if @your_message == 'i am going to work right now!'
      @answer = 'Great !'
    elsif @your_message.split('').last == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
