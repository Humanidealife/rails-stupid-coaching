class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:input].nil?
      @answer = 'ask a question'
    elsif params[:input].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:input] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:input]
      @answer = "I don't care, get dressed and go to work!"
    end
    @ask = params[:input]
  end
end
