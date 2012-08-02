require 'spec_helper'

describe Poll do
  let(:poll){Fabricate(:poll)}
  
  it "has a slug that is 10 digits long when created." do
    poll.link.length.should eq 10
  end
  
  context "#find_next" do
    
    it "finds next question" do
      question = poll.questions[0]
      poll.find_next(question).should eq poll.questions[1]
    end
    
  end
  
end
