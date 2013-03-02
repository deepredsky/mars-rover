require 'spec_helper'

describe MarsRover::West do
  let(:subject){ MarsRover::West.new }
  it "has proper symbol" do
    subject.symbol.should == "W"
  end
  it "points to north when turning left" do
    subject.turn_left.should be_an_instance_of(MarsRover::South)
  end
  it "points to south when turning right" do
    subject.turn_right.should be_an_instance_of(MarsRover::North)
  end
  it "moves forward" do
    subject.move_forward(1,1).should == [0,1]
  end
end

