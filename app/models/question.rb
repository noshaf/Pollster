class Question < ActiveRecord::Base
  attr_accessible :prompt, :poll_id
  belongs_to :link
  has_many :answers
end
