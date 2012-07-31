class PollsController < ApplicationController
  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(params[:poll])
    @poll.save
    redirect_to edit_poll_path(@poll)
  end

  def edit
    @poll = Poll.find(params[:id])
    @question = Question.new
  end

  def show
    @poll = Poll.find_by_link(params[:link])
    @answer = Answer.new
    redirect_to polls_path, :alert => "Invalid URL" unless @poll
  end
  
  def update
  end

  def destroy
  end

  def index
    @poll = Poll.find(params[:id])
  end
end
