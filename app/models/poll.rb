class Poll < ActiveRecord::Base
  attr_accessible :link, :name
  before_save :create_link
  has_many :questions
  
  private
  
  def create_link
    self.link = "#{'%010d' % rand(10 ** 10)}"
  end
  
end
