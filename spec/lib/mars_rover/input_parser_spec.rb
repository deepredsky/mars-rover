require 'spec_helper'

describe MarsRover::InputParser do
  before(:each) do
    @result = MarsRover::InputParser.parse(input)
  end
  it "parses plateau settings" do
    @result.plateau.should be_an_instance_of(MarsRover::Plateau)
    @result.plateau.x.should == 5
    @result.plateau.y.should == 5
  end

  it "parses rovers settings" do
    @result.rovers.length.should == 2
    @result.rovers.first.should be_an_instance_of(MarsRover::Rover)
  end

  def input
    <<-EOF
5 5
1 2 N 
LMLMLMLMM 
3 3 E 
MMRMMRMRRM
    EOF
  end
end
