class QuestionsController < ApplicationController
  def create
    @poll = Poll.find(params[:question][:poll_id])
    @question = @poll.questions.new(params[:question])
    @question.save
    redirect_to edit_poll_path(@poll)
  end

  def update
    @question = Question.find(params[:id])
    @question.update_attributes(params[:question])
    redirect_to edit_poll_path(@question.poll)
  end

  def destroy
    @question = Question.find(params[:id])
    @poll = @question.poll
    @question.delete
    redirect_to edit_poll_path(@poll)
  end

  def index
  end

  def new
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def edit
    @question = Question.find(params[:id])
  end
end
