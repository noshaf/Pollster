class Question < ActiveRecord::Base
  attr_accessible :prompt
  belongs_to :link
  has_many :answers
end
