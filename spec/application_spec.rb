require 'spec_helper'
require 'application'

describe MarsRover::Application do
  before(:each) do
    @application = MarsRover::Application.new
    @application.stub(:input).and_return(input)
  end

  it "parses the input" do
    MarsRover::InputParser.should_receive(:parse).and_return(stub(:rovers => []))
    @application.deploy
  end

  it "displays the result" do
    @application.should_receive(:puts).with("5 1 E")
    @application.deploy
  end

  def input
    <<-EOF
5 5
3 3 E 
MMRMMRMRRM
    EOF
  end
end
