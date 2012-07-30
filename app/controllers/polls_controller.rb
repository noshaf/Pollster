class PollsController < ApplicationController
  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(params[:poll])
    @poll.save
    redirect_to polls_path(@poll)
  end

  def edit
    @question = Question.new
  end

  def show
    @poll = Poll.find_by_link(params[:link])
    redirect_to polls_path, :alert => "Invalid URL" unless @poll
  end
  def update
  end

  def destroy
  end

  def index
    @polls = Poll.all
  end
end
