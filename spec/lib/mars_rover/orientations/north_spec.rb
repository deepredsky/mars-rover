require 'spec_helper'

describe MarsRover::North do
  let(:subject){ MarsRover::North.new }
  it "has proper symbol" do
    subject.symbol.should == "N"
  end
  it "points to west when turning left" do
    subject.turn_left.should be_an_instance_of(MarsRover::West)
  end
  it "points to east when turning right" do
    subject.turn_right.should be_an_instance_of(MarsRover::East)
  end
  it "moves forward" do
    subject.move_forward(1,1).should == [1,2]
  end
end


