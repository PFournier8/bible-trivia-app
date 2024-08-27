class GamesController < ApplicationController
  layout 'game'
  
  def play
    @body_class = 'game'
    @categories = Category.all
    
    if params[:apply_filters]
      selected_category_ids = params.keys.select { |k| k.start_with?('category_') && params[k] == 'true' }
      selected_category_ids = selected_category_ids.map { |k| k.gsub('category_', '').to_i }
      session[:selected_category_ids] = selected_category_ids.presence || Category.pluck(:id)
      session[:answered_question_ids] = [] # Reset answered questions when filters change
    end
    
    session[:selected_category_ids] ||= Category.pluck(:id)
    session[:answered_question_ids] ||= []
    
    @question = find_next_question(session[:selected_category_ids])

    if @question.nil?
      if session[:answered_question_ids].any?
        session[:answered_question_ids] = [] # Reset if all questions have been answered
        @question = find_next_question(session[:selected_category_ids])
      end
      
      if @question.nil?
        flash[:alert] = "No questions available for the selected categories. Please select different categories or add more questions."
        redirect_to play_game_path
      end
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
    
    session[:answered_question_ids] ||= []
    session[:answered_question_ids] << @question.id unless session[:answered_question_ids].include?(@question.id)
  
    @categories = Category.all
    render :play
  end

  private

  def find_next_question(category_ids)
    Question.includes(:answers)
            .where(category_id: category_ids)
            .where.not(id: session[:answered_question_ids])
            .order("RANDOM()")
            .first
  end
end