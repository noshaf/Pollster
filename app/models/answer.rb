class Answer < ActiveRecord::Base
  attr_accessible :check, :statement, :question_id
  belongs_to :question
end
