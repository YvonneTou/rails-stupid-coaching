class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    coach_response = ''
    if @answer
      if @answer.downcase == 'i am going to work'
        coach_response = 'Great!'
      elsif @answer.end_with?('?')
        coach_response = 'Silly question, get dressed and go to work!'
      else
        coach_response = "I don't care, get dressed and go to work!"
      end
    end
    @response = coach_response
  end
end
