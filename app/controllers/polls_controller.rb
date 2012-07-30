class PollsController < ApplicationController
  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(params[:poll])
    @poll.save
    redirect_to poll_path(@poll)
  end

  def edit
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def index
  end
end
