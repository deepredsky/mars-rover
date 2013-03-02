require 'spec_helper'

describe MarsRover::Position do
  let(:subject){ MarsRover::Position.new }
  it "turns left" do
    subject.direction.should_receive(:turn_left)
    subject.turn_left
  end
  it "turns right" do
    subject.direction.should_receive(:turn_right)
    subject.turn_right
  end
  it "moves forward" do
    subject.direction.should_receive(:move_forward).with(subject.x, subject.y)
    subject.move_forward
  end
end

