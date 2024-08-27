class GamesController < ApplicationController
  layout 'game'
  
  def play
    @body_class = 'game'
    @question = Question.includes(:answers).order("RANDOM()").first
    if @question.nil?
      flash[:alert] = "No questions available. Please add some questions to the database."
      redirect_to root_path
    end
  end
  
  def answer
    @question = Question.includes(:answers).find(params[:question_id])
    @selected_answer = @question.answers.find(params[:answer_id])
    @correct_answer = @question.answers.find_by(correct: true)
  
    if @selected_answer.correct
      flash.now[:notice] = "Correct!"
    else
      flash.now[:alert] = "Incorrect. The correct answer was: #{@correct_answer.content}"
    end
  
    render :play
  end
end