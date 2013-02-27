require 'spec_helper'
require 'application'

describe Application do
  before(:each) do
    @application = Application.new
    @application.stub!(:gets){ "some instruction\n"}
  end
  it "gets the input from command line" do
    @application.deploy
    @application.input.should == "some instruction"
  end

  it "parses the input" do
    InputParser.should_receive(:parse)
    @application.deploy
  end

  it "displays the result" do
    @application.stub!(:result){"output test"}
    @application.should_receive(:puts).with("output test")
    @application.deploy
  end
end
