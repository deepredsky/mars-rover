require 'spec_helper'

describe MarsRover::South do
  let(:subject){ MarsRover::South.new }
  it "has proper symbol" do
    subject.symbol.should == "S"
  end
  it "points to east when turning left" do
    subject.turn_left.should be_an_instance_of(MarsRover::East)
  end
  it "points to west when turning right" do
    subject.turn_right.should be_an_instance_of(MarsRover::West)
  end
  it "moves forward" do
    subject.move_forward(1,1).should == [1,0]
  end
end



