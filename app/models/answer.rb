class Answer < ActiveRecord::Base
  attr_accessible :check, :statement
  belongs_to :question
end
