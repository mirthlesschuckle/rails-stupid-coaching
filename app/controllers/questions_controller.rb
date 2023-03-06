class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @result = nil

    if @question.end_with?('?')
      @result = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @result = 'Great!'
    else
      @result = 'I don\'t care, get dressed and go to work!'
    end
  end
end
