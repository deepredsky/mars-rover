require 'spec_helper'

describe MarsRover::East do
  let(:subject){ MarsRover::East.new }
  it "has proper symbol" do
    subject.symbol.should == "E"
  end
  it "points to north when turning left" do
    subject.turn_left.should be_an_instance_of(MarsRover::North)
  end
  it "points to south when turning right" do
    subject.turn_right.should be_an_instance_of(MarsRover::South)
  end
  it "moves forward" do
    subject.move_forward(1,1).should == [2,1]
  end
end
