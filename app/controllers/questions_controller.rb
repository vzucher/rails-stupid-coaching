class QuestionsController < ApplicationController
  def ask
  end

  def question
    @question = params[:question]
    options = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    if @question == 'I am going to work'
      @answer = options[0]
    elsif @question.include?('?')
      @answer = options[1]
    else
      @answer = options[2]
    end
  end
end
