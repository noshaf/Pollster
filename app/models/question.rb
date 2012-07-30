class Question < ActiveRecord::Base
  attr_accessible :prompt, :poll_id
  belongs_to :poll
  has_many :answers
  
end
