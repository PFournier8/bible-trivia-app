class QuestionsController < ApplicationController
  def index
    @body_class = 'questions-page'
    @question = Question.new
    4.times { @question.answers.build }
  end

  def create
    @question = Question.new(question_params)
    correct_answer_index = params[:question][:correct_answer]
    
    if correct_answer_index.blank?
      flash.now[:error] = "Please select the correct answer choice"
      4.times { @question.answers.build } if @question.answers.empty?
      render :index
      return
    end

    correct_answer_index = correct_answer_index.to_i
    @question.answers.each_with_index do |answer, index|
      answer.correct = (index == correct_answer_index)
    end

    if @question.save
      flash[:success] = "Question created successfully!"
      redirect_to questions_path
    else
      flash.now[:error] = @question.errors.full_messages.join(", ")
      4.times { @question.answers.build } if @question.answers.empty?
      render :index
    end
  end

  private

  def question_params
    params.require(:question).permit(:content, :category_id, answers_attributes: [:content])
  end
end