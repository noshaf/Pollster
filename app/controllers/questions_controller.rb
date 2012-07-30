class QuestionsController < ApplicationController
  def create
    @poll = Poll.find(params[:question][:poll_id])
    @question = Question.new(params[:question])
    @question.save
    @answer = Answer.new
    redirect_to edit_question_path(@question)
  end

  def update
  end

  def destroy
  end

  def index
  end

  def new
  end

  def show
  end

  def edit
  end
end
