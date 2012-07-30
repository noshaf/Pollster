class Poll < ActiveRecord::Base
  attr_accessible :link, :name
  before_save :create_link
  
  private
  
  def create_link
    raise request.host
  end
  
end
