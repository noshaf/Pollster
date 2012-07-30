class Poll < ActiveRecord::Base
  attr_accessible :link, :name
  before_save :create_link
  has_many :questions
  
  def find_next(first_question)
    self.questions.each_with_index do |question, index|
      return self.questions[index + 1] if first_question == question
    end
  end
  
  private
  
  def create_link
    self.link = "#{'%010d' % rand(10 ** 10)}"
  end
  
end
