class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:answer][:question_id])
    @answer = @question.answers.new(params[:answer])
    @answer.save
    next_question = @question.poll.find_next(@question)
    if next_question
      redirect_to question_path(next_question)
    else
      redirect_to "/#{@question.poll.link}", :alert => "Thanks for Taking this Poll!"
    end
  end

  def edit
  end
end
