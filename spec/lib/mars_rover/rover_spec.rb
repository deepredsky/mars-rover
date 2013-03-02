require 'spec_helper'

describe MarsRover::Rover do
  context "deploy" do
    it "should pass command to the position" do
      @rover = MarsRover::Rover.new
      @rover.position = MarsRover::Position.new
      @rover.command = MarsRover::Command.new("L")
      @rover.position.should_receive("turn_left")
      @rover.deploy
    end
  end
end
