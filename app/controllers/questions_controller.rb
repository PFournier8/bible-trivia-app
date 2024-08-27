class QuestionsController < ApplicationController
  def index
    @body_class = 'questions-page'
    @question = Question.new
    4.times { @question.answers.build }
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
    4.times { @question.answers.build }
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      render json: { status: 'success', message: 'Question created successfully' }, status: :created
    else
      render json: { status: 'error', errors: @question.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def question_params
    params.require(:question).permit(:content, :category_id, 
      answers_attributes: [:content, :correct])
  end
end